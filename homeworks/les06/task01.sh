# 1. Написать скрипт, который удаляет из текстового файла пустые строки и
# заменяет маленькие символы на большие. Воспользуйтесь tr или SED.


vagrant@homestead:~/gb_linux$ cat file.txt
It is argued here that most contemporary approaches to designing AGI systems fall into four toplevel
categories: symbolic, emergentist, hybrid and universalist.

Leading examples of each category
are provided, and the generally perceived pros and cons of each category are summarized.

Not all contemporary AGI approaches seek to create human-like general intelligence specifically.


But it is argued here, that, for any approach which does, there is a certain set of key
cognitive processes and interactions that it must come to grips with, including familiar constructs
such as working and long-term memory, deliberative and reactive processing, perception, action and
reinforcement learning, metacognition and so forth.
vagrant@homestead:~/gb_linux$ cat file.txt | sed '/./!d' | tr [:lower:] [:upper:]
IT IS ARGUED HERE THAT MOST CONTEMPORARY APPROACHES TO DESIGNING AGI SYSTEMS FALL INTO FOUR TOPLEVEL
CATEGORIES: SYMBOLIC, EMERGENTIST, HYBRID AND UNIVERSALIST.
LEADING EXAMPLES OF EACH CATEGORY
ARE PROVIDED, AND THE GENERALLY PERCEIVED PROS AND CONS OF EACH CATEGORY ARE SUMMARIZED.
NOT ALL CONTEMPORARY AGI APPROACHES SEEK TO CREATE HUMAN-LIKE GENERAL INTELLIGENCE SPECIFICALLY.
BUT IT IS ARGUED HERE, THAT, FOR ANY APPROACH WHICH DOES, THERE IS A CERTAIN SET OF KEY
COGNITIVE PROCESSES AND INTERACTIONS THAT IT MUST COME TO GRIPS WITH, INCLUDING FAMILIAR CONSTRUCTS
SUCH AS WORKING AND LONG-TERM MEMORY, DELIBERATIVE AND REACTIVE PROCESSING, PERCEPTION, ACTION AND
REINFORCEMENT LEARNING, METACOGNITION AND SO FORTH.
