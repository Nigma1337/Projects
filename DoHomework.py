import requests
import datetime

today = datetime.date.today()
today = str(today.day) + '/' + str(today.month) + '-' + str(today.year)
tomorrow = datetime.date.today() + datetime.timedelta(days=1)
tomorrow = str(tomorrow.day) + '/' + str(tomorrow.month) + '-' + str(tomorrow.year)
imorgen = 0


payload = {'m$Content$username2': 'unordmgs', 'm$Content$password2': 'Oregano9Vig6'}
unordUrl="https://www.lectio.dk/lectio/237/login.aspx"
response = requests.get('https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v2/?key=2F03D4A3B17EF168A2281D2CAF62A2DC&steamids=76561198016598040')

from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from webdriver_manager.chrome import ChromeDriverManager

fuck = 0

driver = webdriver.Chrome(ChromeDriverManager().install())
driver.get(unordUrl)

u = driver.find_element_by_name('m$Content$username2')
u.send_keys('unordmgs')
p = driver.find_element_by_name('m$Content$password2')
p.send_keys('Oregano9Vig6')
p.send_keys(Keys.RETURN)
#print(driver.page_source)
d = driver.find_element_by_id('s_m_HeaderContent_subnavigator_ctl05')
d.click()
n = driver.find_elements_by_class_name('exercisemissing')
for i in n:
    fuck += 1
    print(i.text)
f = driver.find_elements_by_class_name('nowrap')
for i in f:
    if tomorrow in i.text:
        imorgen += 1
if fuck > imorgen:
    #Punishment
print(fuck)
driver.close()


if 'gameextrainfo' in str(response.content):
    print(response.text)


#b'{"response":{"players":[{"steamid":"76561198016598040","communityvisibilitystate":3,"profilestate":1,"personaname":"Ok","lastlogoff":1575413957,"commentpermission":1,"profileurl":"https://steamcommunity.com/profiles/76561198016598040/","avatar":"https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/17/17b348797c70934280c419e7d91c069de4a38227.jpg","avatarmedium":"https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/17/17b348797c70934280c419e7d91c069de4a38227_medium.jpg","avatarfull":"https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/17/17b348797c70934280c419e7d91c069de4a38227_full.jpg","personastate":1,"realname":"Ok","primaryclanid":"103582791429521408","timecreated":1258733557,"personastateflags":0,"loccountrycode":"DK"}]}}'

#b'{"response":{"players":[{"steamid":"76561198016598040","communityvisibilitystate":3,"profilestate":1,"personaname":"Ok","lastlogoff":1575413957,"commentpermission":1,"profileurl":"https://steamcommunity.com/profiles/76561198016598040/","avatar":"https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/17/17b348797c70934280c419e7d91c069de4a38227.jpg","avatarmedium":"https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/17/17b348797c70934280c419e7d91c069de4a38227_medium.jpg","avatarfull":"https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/17/17b348797c70934280c419e7d91c069de4a38227_full.jpg","personastate":1,"realname":"Ok","primaryclanid":"103582791429521408","timecreated":1258733557,"personastateflags":0,"gameextrainfo":"Warframe","gameid":"230410","loccountrycode":"DK"}]}}'

#gameextrainfo