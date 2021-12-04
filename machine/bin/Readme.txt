


1- Create a folder on rasp: /home/pi/zamco

2- Json files and .jar file must be copied in the same folder /home/pi/zamco

3- Execute the command : java -jar server.jar 192.168.1.100 9600
192.168.1.100 : Reader adress
9600 : Reader port number

4- To run the program at System bootup
	4.1 edit the file rc.local : 
	sudo nano /etc/rc.local
	4.2 Add the command line at the end of file (before exit)
	sudo java -jar server.jar 192.168.1.1 9600 &