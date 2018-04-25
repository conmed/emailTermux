clear
echo
echo
echo 
echo Antes de comenzar debemos configurar un editor.
echo ¿Qué editor prefieres?
echo
echo "     1) editor VIM"
echo "     2) editor EMACS"
echo
echo -n "Escribe una opción: "
read editor
case $editor in
    1)
        apt install vim
        echo "Editor VIM instalado"
	editor="vim"
        echo
        ;;
    2)
        pkg install emacs
        echo "Editor EMACS instalado"
	editor="emacs"
        echo
        ;;
    *)
	echo
	echo      $editor", no es una opción.\
	TIENES QUE ELEGIR UNA OPCIÓN"
	echo
        echo "Reinicia la instalación"
	echo
	sleep .8
	echo
	echo
        exit
        ;;
esac
sleep .2
vd $HOME
echo
apt install mutt
sleep .3
echo -n Instalación de mutt. Correcto [
setterm -foreground green -bold on
echo -n ✓
setterm -foreground red -bold on
echo -n ]
setterm -foreground white -bold off
setterm -foreground red -bold on
sleep .5
echo >.muttrc
apt install util-linux
cd $HOME
clear
echo
echo `setterm -foreground green -bold on`.
echo
echo
echo "                                            _ "
echo "                                           ( )"
echo "   ___    _     ___    ___ ___     __     _| |"
echo " /'___) /'_ \ /' _  \/' _ ' _ '\ /'__'\ /'_' |"
echo "( (___ ( (_) )| ( ) || ( ) ( ) |(  ___/( (_| |"
echo "'\____)'\___/'(_) (_)(_) (_) (_)'\____)'\__,_)"
setterm -foreground blue
echo "               Hackeando desde Android - Ivam3"
echo
echo
echo
echo `setterm -foreground white -bold off`
echo
echo

setterm -foreground red -bold on
echo -n CONFIGURACIÓN DE CORREO IMAP Y SMTP
echo
echo
setterm -foreground green -bold on
echo -n "Dirección de correo gmail: "
setterm -foreground white -bold off
read Umail
echo set from = '"'$Umail'"'>>.muttrc
setterm -foreground green -bold on
echo -n "Nombre real de usuario: "
setterm -foreground white -bold off
read Rname
echo set realname = '"'$Rname'"'>>.muttrc
echo set imap_user = '"'$Umail'"'>>.muttrc
setterm -foreground green -bold on
echo -n "Contraseña de correo: "
setterm -foreground white -bold off
read Pimap
echo set imap_pass = '"'$Pimap'"'>>.muttrc
echo set folder = '"'imaps://imap.gmail.com:993'"'>>.muttrc
echo set spoolfile = '"'+INBOX'"'>>.muttrc
echo set postponed ='"'+[Gmail]/Drafts'"'>>.muttrc
echo set header_cache =~/.mutt/cache/headers>>.muttrc
echo set message_cachedir =~/.mutt/cache/bodies>>.muttrc
echo set certificate_file =~/.mutt/certificates>>.muttrc
echo set smtp_url = "'"smtps://$Umail:$Pimap@smtp.gmail.\com:465/"'">>.muttrc
echo set move = no>>.muttrc
echo set imap_keepalive = '900'>>.muttrc

echo set editor = $editor >>.muttrc
echo
setterm -foreground red -bold on
sleep .5
echo -n Archivo de configuraciones creado [
setterm -foreground green -bold on
echo -n ✓
setterm -foreground red -bold on
echo -n ]
setterm -foreground white -bold off
#creando directorios
mkdir -pv ~/.mutt/cache/headers
mkdir -pv ~/.mutt/cache/bodies
touch ~/.mutt/certificates
echo
setterm -foreground red -bold on
sleep .5
echo -n Directorios de configuración creados [
setterm -foreground green -bold on
echo -n ✓
setterm -foreground red -bold on
echo -n ]
setterm -foreground white -bold off
echo
setterm -foreground red -bold on
sleep .5
echo -n Directorio de certificados creado [
setterm -foreground green -bold on
echo -n ✓
setterm -foreground red -bold on
echo -n ]
setterm -foreground white -bold off
echo
echo
setterm -foreground yellow -bold on
echo Ya puedes enviar correos por termux
echo
setterm -foreground white -bold off
echo Por ejemplo:
echo
echo mutt -s '"'Asunto'"' -x correo@destinatario.com '"'Contenido del correo'"'
echo
echo
echo Para poder ver la bandeja de entrada, puedes hacerlo con el comando '"'mutt'"', sin comillas.
echo
echo
