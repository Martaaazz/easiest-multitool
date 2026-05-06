import requests

def wyslij_wiadomosc():
    webhook_url = "https://discord.com/api/webhooks/1501625064494469332/i87RhvaSOKgY0cHmn5cOicfCOsFcHcYGgEvrk4oZgft0tCWDC6pW9LVZfmHHox89S0pQ"
    wiadomosc = input("Wpisz treść wiadomości: ")
    
    data = {
        "content": wiadomosc,
        "username": "Savage" # Możesz tu zmienić nazwę bota
    }

    result = requests.post(webhook_url, json=data)

    if result.status_code == 204:
        print("Wysłano pomyślnie!")
    else:
        print(f"Błąd: {result.status_code}")

wyslij_wiadomosc()
