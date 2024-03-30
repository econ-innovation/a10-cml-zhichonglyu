recipient="zhichonglyu@foxmail.com"
sender="zhichonglyu@gmail.com"
subject="a10-cml-zhichonglyu"
content="吕志冲"
echo -e "Subject: $subject\nFrom: $sender\nTo: $recipient\n\n$content" | msmtp --from=default -t
