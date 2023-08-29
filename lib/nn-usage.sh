nn_print_usage() {
        cat << EOF

$ noti-notify <option>

        -h, --help: print this message and exit with 0
        -v, --version: print the version of programm and exit with 0
        -s, --start: start the programm
        -c, --cancel: stop the programm
	    --command "/path/to/your/command/file": sets a new command
	    --time "n": where "n" is the value in seconds
	    --view-command: see the command that are set
	    --view-time: see the seconds that are set 

--command

Esse parâmetro é usado para trocar a função do programa (oque o programa realmente ira fazer/verificar). Você deverá escrever o novo Script em um arquivo qualquer para depois ser enviado para programa, obiviamente para você testar seu Script você estará testando ele com uma Shebang definida, porém na hora de envialo ao Script, terá que ter somente o corpo do Script sem chamar nenhuma Shebang.

	testando o Script, exemplo de arquivo:

		#!/bin/bash
		foobar='Hello World!'
		noti -t 'Mensagem:' -m "${foobar}"

	para enviar o Script, exemplo de arquivo:

		foobar='Hello World!'
		noti -t 'Mensagem:' -m "${foobar}"

Para o programa funcionar corretamente e as mensagem sempre serem enviadas para seu Desktop e para seu smartphone, sempre user o "noti" para enviar a mensagem de fato, se fizer necessário, utilize ele mesmo dentro de um "if" para fazer alguma verificação. A sintaxe do "noti" sempre será como no exemplo.

EOF
}
