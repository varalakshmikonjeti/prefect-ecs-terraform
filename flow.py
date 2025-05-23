from prefect import flow

@flow(name="my_flow")
def my_flow():
    print("Hello from my flow!")

if __name__ == "__main__":
    my_flow()
