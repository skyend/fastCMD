# FastCMD #

	$ git clone https://github.com/skyend/fastCMD

	$ cd fastCMD

	$ ./install.pl 
	or 
	$perl install.pl

## execute ## 

	$ f

## ex ) ##


	$ f -r oymstart '/home/www/oymkr/script/oymkr_fastcgi.pl -l /home/www/oymkr/oymkr.socket -d' 'oym fcgi 서버 띄우기'

	$ f oymstart

	----------------
	Execute > /home/www/oymkr/script/oymkr_fastcgi.pl -l /home/www/oymkr/oymkr.socket -d 
	----------------
	
	...
	


	$ f -register oymrestart 'killall -r perl-fcgi-pm & f oymstart' 'Comment: perl-fcgi-pm [oymkr] 프로세스를 죽이고 시작명령어를 부르는방법으로 서버 재시작'

	$ f oymrestart

	...

