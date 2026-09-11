from gtts import gTTS

text = """Stock market — ek aisa bazaar jahan aap companies ke hisse kharidte aur bechte ho. Jab aap kisi company ka share kharidte ho, aap us company ke chhote owner ban jaate ho. Iska matlab: company ki growth se aapko fayda ho sakta hai. Shares ki keemat demand-supply, company ki kamai aur news se badhti ya girti hai — agar company achha perform karegi toh share upar jayega; agar kharab ho toh price gir sakta hai. Yeh paisa badha sakta hai lekin risk bhi hota hai. Humesha research karo aur long-term socho; panic selling se bacho. Example: ₹100 ka share agar ₹150 ho gaya toh aapko profit hua. Tip: SIP aur diversified portfolio se risk kam hota hai. Agar aapko yeh short helpful laga, follow karo — main aur simple finance shorts laata/laati hoon!"""

tts = gTTS(text, lang='hi')
tts.save("voice.mp3")
print("Saved voice.mp3")
