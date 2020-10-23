import time
import random
from time import sleep
import pygame
from tkinter import *

window = Tk()

input_user = StringVar()
input_field = Entry(window, text=input_user)
input_field.pack(side=BOTTOM, fill=X)

def enter_pressed(event):
    input_get = input_field.get()
    print(input_get)
    label = Label(frame, text=input_get)
    input_user.set('')
    label.pack()
    return "break"

frame = Frame(window, width=300, height=300)
frame.pack_propagate(False)
input_field.bind("<Return>", enter_pressed)
frame.pack()
window.mainloop()

################

pp = "prijs"
cc = "contact"
vb = "inspiratie"
yo = "info"
bd = "bedrijf"
mt = "materiaal"
ad = "advies"
af = "korting"
advies = ["Ik zou je de Mask Stand zeker aanraden, tijdens de coronacrisis zijn maskers een must!", "Het zou niet evident zijn om je mondkapje te verliezen... Kopen dus!", "Het zou slim zijn om je maskers goed bij te houden!"]
bedrijf = ["ZENKO zijn de masterminds achter mij en de Mask Stand!", "Het bedrijf ZENKO heeft de Mask Stand gemaakt!\nVoor meer info kies de keuze 'contact'!", "Contact opnemen met het bedrijf ZENKO gaat makkelijk door een vraag te stellen aan mij over contact! ZENKO was opgericht." ]
groet = ["Hoe gaat het!", "Howdy!", "Hey daar!"]


def ont():
    gewonnen = False
    print("\n" + random.choice(groet) + ' Mijn naam is Lisa! Ik ben een robot die jou zal assisteren!')
    sleep(5)
    naam = input("Wat is uw naam? ")
    sleep(2)
    print('\nHey ' + naam + '! Ik ben hier om uw vragen over de Mask Stand te beantwoorden!')
    while True:
        sleep(2)
        anw = input("\nKies een optie: Info, Prijs, Contact, Inspiratie, Bedrijf, Materiaal, Advies of Korting! ").lower()
        if pp in anw:
            if gewonnen is True:
                print("De prijs van de Mask Stand is nu 1 Euro! 💸")
                sleep(5)
            else:
                print("De prijs van de Mask Stand is 5 Euro! 💸")
                sleep(5)
        else:
            if cc in anw:
                print("Je kan ons contacteren via:\n📸: @LISA\n📱: 547284376268\n📱: LISATHEROBOT@BOT.COM\n📱: Www.LisaTheRobot.Com")
                sleep(5)
            else:
                if vb in anw:
                    print("\nHoe raar het ook klikt, dit is een uniek product.\nNergens op Google staat er geen enkele foto die lijkt op de Mask Stand!\nCreativiteit!")
                    sleep(5)
                else:
                    if yo in anw:
                        print("Hey! Ik ben geprogrammeerd zodanig dat ik jouw vragen kan beantwoorden!\nAls je suggesties hebt kan u altijd ZENKO inlichten!")
                        sleep(5)
                    else:
                        if bd in anw:
                            print(random.choice(bedrijf))
                            sleep(5)
                        else:
                            if mt in anw:
                                print("De Mask Stand bestaat vooral uit hout, hoewel de Mask Stand ook bestaat uit lijm en vijzen!")
                                sleep(5)
                            else:
                                if ad in anw:
                                    print(random.choice(advies))
                                    sleep(3)
                                else:
                                    if af in anw:
                                        kc = input("Hebt u een code voor korting op de Mask Stand? (Ja/Nee) ").lower()
                                        if kc == "nee":
                                            print("Dat is spijtig om te horen, zullen we een spel spelen? U kan een code winnen!")
                                            sleep(1)
                                            putin = input("Doe je mee? (Ja/Nee) ").lower()
                                            if putin == "nee":
                                                print("Dat is spijtig! Kan ik u verder helpen?")
                                                sleep(2)
                                            else:
                                                if putin == "ja":
                                                    print("Het spel zal als volgt gaan, ik heb 1 cijfer van 1-3 in mijn hoofd! Als u het juiste cijfer raadt wint u een code!")
                                                    kraak = random.randint(1, 3)
                                                    guess = input("Raad maar! ")
                                                    guess = int(guess)
                                                    if guess == kraak:
                                                        print("Woah! Geweldige raad skills dat je daar hebt, " + naam +"! De kortingscode is 'geheimecode'.")
                                                    else:
                                                        print("INCORRECT! Probeer het later nog een keer ;).")
                                                    sleep(3)
                                        else:
                                            if kc == "ja":
                                                geefin = input("Geweldig! Geef de code in! ").lower()
                                                if geefin == "geheimecode":
                                                    print(naam + ", Gefeliciteerd! U kan nu de Mask Stand kopen voor 1 Euro!")
                                                    gewonnen = True
                                                    sleep(2)
                                                else:
                                                    print("Hmm, dat is geen geldige code. Bent u zeker dat de code klopt?")
                                                    sleep(2)


                                        sleep(5)
                                    else:
                                        print(
                                            "'" + (anw) + "'" + " is geen geldige optie! Alles in orde, " + naam + "?")



ont()
