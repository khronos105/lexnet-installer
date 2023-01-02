from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager
import time

options = Options()

options.headless = True

p = {"download.default_directory": "/Users/khronos/_/lexnet_certs_installer/downloads"}
options.add_experimental_option("prefs", p)

driver = webdriver.Chrome(service=Service(
    ChromeDriverManager().install()), options=options)

driver.get("https://www.abogacia.es/repositorio/acadescarga/ACA_certs_todos.zip")

driver.get(
    "https://www.abogacia.es/repositorio/acadescarga/TarjetaACA_MacMonterey.zip")

time.sleep(2)

driver.close()
