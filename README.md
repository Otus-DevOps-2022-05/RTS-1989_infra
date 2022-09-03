# RTS-1989_infra
RTS-1989 Infra repository

bastion_IP=84.201.132.159
someinternalhost_IP=10.128.0.10

Для подключения к хосту к внутреннемму хосту через бастион одной коммандой нужно ввести команду:
ssh -J 84.201.132.159 10.128.0.10

Для подключения по алиасу нужно внести в следующте данные в файл конфигурации ~/.ssh/config:
Host bastion
        HostName 84.201.132.159
        User <Ваш пользователь>

Host someinternalhost
	HostName 10.128.0.10
	User <Ваш пользователь>

Host someinternalhost
	ProxyJump bastion

# Домашнее задание 3. cloud-testapp
testapp_IP = 51.250.80.54
testapp_port = 9292
