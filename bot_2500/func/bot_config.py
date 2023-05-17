
# 机器人收u和转账的地址
bot_address = "TPLYQiiCDqjBMPKcWMNUFUVWgHM7JJJJJJ"

# 钱包私钥
pri_key = "6a30c9e994d570cdfee60d4c2c9c41a66e3fbaf432e348dffd5bfbc93e98c3c5"

# 机器人token 在telegram的botFather上设置
bot_token = "5826785744:AAHAbbIRT1YZcipnGhjXBqa-LJpZDpy7aIM"

#担保公群
group_url = "https://t.me/+w067KR_A61VjNmZl"

#联系老板
boss_url = "https://t.me/pcdd2828"

#老板username 不带@
boss_username = "pcdd2828"

#老板chat_id 通过机器人@RawDataBot，发送/start
administrator_chat_id =5990575900 

#汇率抽成  1U利润多少trx
commission = 1

#单笔最小金额 USDT
min_usdt_amount = 1


# 波场API地址 在 https://www.trongrid.io/ 上申请
trongrid_api_key = "2f9385ef-2820-4caa-9f74-e720e1a39a75"

#转账成功后通知的群id
group_id = -602204610


# 预支trx 数量
pre_pay_trx = 14

# 机器人名字
bot_name = "TRX免费兑换"



#测试运行 True 主网 False
is_testnet = False

#https://api.shasta.trongrid.io/v1/accounts/TGt2k3w8cxwkURNYWA9jH9M1iuDMx7fdx6
if is_testnet:
    trongrid_api = "https://api.shasta.trongrid.io/v1/accounts/"
    tronscan_api = "https://shastapi.tronscan.org/"
    usdt_address = "TJTFoz1oMnFZWVjQ5LkFistBJsBKAVahiX"
else:
    trongrid_api = "https://api.trongrid.io/v1/accounts/"
    tronscan_api = "https://apilist.tronscanapi.com/"
    usdt_address = "TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t"

#https://apilist.tronscanapi.com/api/token_trc20/transfers?limit=20&start=0&sort=-timestamp&count=true&tokens=TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t&filterTokenValue=1&relatedAddress=TUGWhWmyLQQhdREFYc5DraZztHmjiP6666
#https://api.trongrid.io/v1/token20/TAvzGq83QggAJJ69hYpHTZHvzaaeY3iRLV/holders
