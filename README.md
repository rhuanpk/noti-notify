# NOTI-NOTIFY

## Descrição

Script feito utilizando o utilitário "noti" (do user: [variadico](https://github.com/variadico/noti)). Esse Script envia notificações para o seu Desktop e seu Smartphone mediante a regra que definir para o comando de x em x tempos, também definidos pelo usuário.

## Instalação

~~~shell
wget -qO - "https://raw.githubusercontent.com/rhuan-pk/noti-notify/master/install.sh" | bash -
~~~

## Uso

~~~
noti-notify [option]

	-h, --help: print this message and exit with 0
        -v, --version: print the version of programm and exit with 0
        -s, --start: start the programm
        -c, --cancel: stop the programm
	    --command "/path/to/your/command/file": sets a new command
	    --time "n": where "n" is the value in seconds
	    --view-comman: see the command that are set
	    --view-time: see the seconds that are set 
~~~

## --command

Esse parâmetro é usado para trocar a função do programa (oque o programa realmente ira fazer/verificar). Você deverá escrever o novo Script em um arquivo qualquer para depois ser enviado para programa, obiviamente para você testar seu Script você estará testando ele com uma Shebang definida, porém na hora de envialo ao Script, terá que ter somente o corpo do Script sem chamar nenhuma Shebang.

### Testando o Script, exemplo de arquivo:

~~~shell
	#!/bin/bash
	foobar='Hello World!'
	noti -t 'Mensagem:' -m "${foobar}"
~~~

### Para enviar o Script, exemplo de arquivo:

~~~shell
	foobar='Hello World!'
	noti -t 'Mensagem:' -m "${foobar}"
~~~

Para o programa funcionar corretamente e as mensagem sempre serem enviadas para seu Desktop e para seu smartphone, sempre user o "noti" para enviar a mensagem de fato, se fizer necessário, utilize ele mesmo dentro de um "if" para fazer alguma verificação. A sintaxe do "noti" sempre será como no exemplo.
