import dlt
import pandas as pd
from pathlib import Path
import os


@dlt.resource(write_disposition="replace")
def load_excel_resource(file_path: str):
    df = pd.read_excel(file_path)
    yield df


if __name__ == "__main__":
    working_directory = Path(__file__).parent

    os.chdir(working_directory)
    excel_path = working_directory / "data" / "iFood.xlsx"
    data = load_excel_resource(excel_path)
    print(data)
    pipeline = dlt.pipeline(
        pipeline_name='ifood_db',
        destination="snowflake",
        dataset_name='staging'
        )
    
    load_info = pipeline.run(data, table_name="iFood")

    print(load_info)