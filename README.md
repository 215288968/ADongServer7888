# ADongServer

(新建Github账号通常立刻马上被封)

Fork，

在Settings的Secrets里面增加下面两个变量

点亮Star

手动启动一次workflow

# FRPC_INI

```
[common]
server_addr = 公网服务器ip地址
server_port = FRP服务器端口

[code]
type = tcp
local_ip = 127.0.0.1
local_port = 5701
remote_port = 公网服务器阿东的端口(记得放行)
```

# ENV_PROPERTIES

下面的内容根据最新的阿东配置进行更改后添加

参考https://github.com/rubyangxg/jd-qinglong/blob/master/env.template.properties

```
#请根据机器配置合理调整大小，最小为2，该值表示可以同时多少人使用
SE_NODE_MAX_SESSIONS=4
#青龙上传模式
#1 直传，配置了几个青龙就传几份CK
#0 获取到CK后，弹窗可勾选传哪个，若只配置了一个青龙，则自动变为直传
QL_UPLOAD_DIRECT=0
#########青龙#########
#指定获取到的ck要上传到哪个青龙面板

#第1套青龙(用户名密码登录)
QL_URL_1=http://青龙ip或域名:5700
#和下面的OpenApi方式二选一
#青龙面板用户名，密码
QL_USERNAME_1=admin
QL_PASSWORD_1=青龙面板登录密码
#上面的用户名密码登录方式二选一
QL_CLIENTID_1=
QL_SECRET_1=
#自定义名称，用于展示
QL_LABEL_1=腾讯云
#青龙面板ck最大容量，超量不上传
QL_CAPACITY_1=40


#用户名密码登录方式二选一
#第2套青龙(openid登录)
QL_LABEL_2=阿里云
QL_URL_2=http://10.0.0.200:5700
QL_USERNAME_2=
QL_PASSWORD_2=
QL_CLIENTID_2=dd
QL_SECRET_2=dd
#青龙面板ck最大容量，超量不上传
QL_CAPACITY_2=40


#第3套青龙(openid登录)  以此类推
QL_LABEL_3=七牛云
QL_URL_3=http://10.0.0.200:5800
QL_USERNAME_3=
QL_PASSWORD_3=
QL_CLIENTID_3=ff
QL_SECRET_3=ff
#青龙面板ck最大容量，超量不上传
QL_CAPACITY_3=40
#####################

#########推送#########
## 通知环境变量
## 1. Server酱
## https://sct.ftqq.com
## 下方填写 SCHKEY 值或 SendKey 值
PUSH_KEY=""

## 2. BARK
## 下方填写app提供的设备码，例如：https://api.day.app/123 那么此处的设备码就是123
BARK_PUSH=""
## 下方填写推送声音设置，例如choo，具体值请在bark-推送铃声-查看所有铃声
BARK_SOUND=""
## 下方填写推送消息分组，默认为"QingLong"
BARK_GROUP="QingLong"

## 3. Telegram
## 下方填写自己申请@BotFather的Token，如10xxx4:AAFcqxxxxgER5uw
TG_BOT_TOKEN=""
## 下方填写 @getuseridbot 中获取到的纯数字ID
TG_USER_ID=""
## Telegram 代理IP（选填）
## 下方填写代理IP地址，代理类型为 http，比如您代理是 http://127.0.0.1:1080，则填写 "127.0.0.1"
## 如需使用，请自行解除下一行的注释
TG_PROXY_HOST=""
## Telegram 代理端口（选填）
## 下方填写代理端口号，代理类型为 http，比如您代理是 http://127.0.0.1:1080，则填写 "1080"
## 如需使用，请自行解除下一行的注释
TG_PROXY_PORT=""
## Telegram 代理的认证参数（选填）
TG_PROXY_AUTH=""
## Telegram api自建反向代理地址（选填）
## 教程：https://www.hostloc.com/thread-805441-1-1.html
## 如反向代理地址 http://aaa.bbb.ccc 则填写 aaa.bbb.ccc
## 如需使用，请赋值代理地址链接，并自行解除下一行的注释
TG_API_HOST=""

## 4. 钉钉
## 官方文档：https://developers.dingtalk.com/document/app/custom-robot-access
## 下方填写token后面的内容，只需 https://oapi.dingtalk.com/robot/send?access_token=XXX 等于=符号后面的XXX即可
DD_BOT_TOKEN=""
DD_BOT_SECRET=""

## 5. 企业微信机器人
## 官方说明文档：https://work.weixin.qq.com/api/doc/90000/90136/91770
## 下方填写密钥，企业微信推送 webhook 后面的 key
QYWX_KEY=""

## 6. 企业微信应用
## 参考文档：http://note.youdao.com/s/HMiudGkb
## 下方填写素材库图片id（corpid,corpsecret,touser,agentid），素材库图片填0为图文消息, 填1为纯文本消息
QYWX_AM=""

## 7. iGot聚合
## 参考文档：https://wahao.github.io/Bark-MP-helper
## 下方填写iGot的推送key，支持多方式推送，确保消息可达
IGOT_PUSH_KEY=""

## 8. Push Plus
## 官方网站：http://www.pushplus.plus
## 下方填写您的Token，微信扫码登录后一对一推送或一对多推送下面的token，只填 PUSH_PLUS_TOKEN 默认为一对一推送
PUSH_PLUS_TOKEN=""
## 一对一多推送（选填）
## 下方填写您的一对多推送的 "群组编码" ，（一对多推送下面->您的群组(如无则新建)->群组编码）
## 1. 需订阅者扫描二维码 2、如果您是创建群组所属人，也需点击“查看二维码”扫描绑定，否则不能接受群组消息推送
PUSH_PLUS_USER=""

## 9. go-cqhttp
## gobot_url 推送到个人QQ: http://127.0.0.1/send_private_msg  群：http://127.0.0.1/send_group_msg
## gobot_token 填写在go-cqhttp文件设置的访问密钥
## gobot_qq 如果GOBOT_URL设置 /send_private_msg 则需要填入 user_id=个人QQ 相反如果是 /send_group_msg 则需要填入 group_id=QQ群
## go-cqhttp相关API https://docs.go-cqhttp.org/api
GOBOT_URL=""
GOBOT_TOKEN=""
GOBOT_QQ=""
#####################

#########XDD#########
XDD_URL=
XDD_TOKEN=
#####################

#########页面自定义#########
INDEX.TITLE=你的首页标题
INDEX.NOTICE=你的公告
#####################

#########自定义操作时限,单位 秒#########
OP_TIME=180
#####################

#########QQBot监控群聊，此处配置qq群号#########
MONITOR.QQ.GROUPID=
#####################
```
