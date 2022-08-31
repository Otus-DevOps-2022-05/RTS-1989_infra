# RTS-1989_infra
RTS-1989 Infra repository

bastion_IP=84.201.132.159
someinternalhost_IP=10.128.0.15

Для подключения к хосту к внутреннемму хосту через бастион одной коммандой нужно ввести команду:
ssh -J 84.201.132.159 10.128.0.15

Для подключения по алиасу нужно внести в следующте данные в файл конфигурации ~/.ssh/config:
Host bastion
        HostName 84.201.132.159
        User <Ваш пользователь>

Host someinternalhost
	HostName 10.128.0.15
	User <Ваш пользователь>

Host someinternalhost
	ProxyJump bastion
