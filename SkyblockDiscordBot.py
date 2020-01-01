import requests
from bs4 import BeautifulSoup
import discord
from discord.ext import commands, tasks
import datetime
import asyncio
from discord.ext.tasks import loop

bot = commands.Bot(command_prefix="!")
@bot.event
async def on_ready():
    print(datetime.datetime.utcnow().isoformat())
    print('Logged in as')
    print(bot.user.name)
    print(bot.user.id)
    print('------')
    await bot.close()
#https://discordapp.com/oauth2/authorize?client_id=589508816698081311&permissions=67644560&scope=bot

@loop(seconds=10)
async def send():
    await bot.wait_until_ready()
    channel = bot.get_channel(652523008677642251)
    message = await channel.fetch_message(652574310275350538)
    r = requests.get("https://sky.lea.moe/stats/Doggly/Zucchini")
    soup = BeautifulSoup(r.content, "html.parser")
    dab = soup.find_all(class_='stat-value')
    for i in dab:
        if 'Coins' in str(i):
            await message.edit(content=i.text)
    await asyncio.sleep(10)

send.start()
bot.run("NotPuttingTokenOnGithub")
