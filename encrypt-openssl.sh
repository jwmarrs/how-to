# http://kb.ictbanking.net/article.php?id=499
openssl enc -aes-256-cbc -salt -in test.txt -out test.txt.enc
openssl enc -aes-256-cbc -d -in test.txt.enc -out test.txt
