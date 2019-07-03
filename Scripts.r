{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf500
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww15320\viewh6780\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 1. Load library MIRT (Tools/install packages)\
2. import dataset (\'93file.csv\'94)   /*set name  \'93file.csv\'94 */\
3. library (mirt)\
\
4. /*IRT logistic models */\
    \
    mod1<-mirt(file.csv,1,itemtype = 'Rasch')\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0     mod2<-mirt(file.csv,1,itemtype = \'912PL', SE=TRUE)\
    mod3<-mirt(file.csv,1,itemtype = '3PL', SE=TRUE)\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
5. /* Coefficient matrix*/\
\
coef(mod1, simplify=TRUE, IRTpars=TRUE)\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 coef(mod2, simplify=TRUE, IRTpars=TRUE)\
coef(mod3, simplify=TRUE, IRTpars=TRUE)\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 6./* Graphical*/\
   \
   plot(mod1, type='info')\
   plot(mod1, type='trace')\
   summary(mod1)\
\
7. /*Select of better logistic model mod1=\'93Rasch\'94, mod2=\'932PL\'94, mod3=\'933PL\'94*/\
\
Anova(mod1, mod2)\
Anova(mod2, mod3)\
Anova(mod1, mod3)\
 \
8. /*if the best model is mod2, Anova Results (p<0.5) */\
\
NameOptimalModel-mirt(file.csv,1,itemtype = "2PL")\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 9./* optimal model*/\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
colnames(file.csv)<-c(\'93i01","i02","i03","i04","i05","i06","i07","i08","i09","") /* depends of the items selected in the plot for the optimal model */ \
vars<-c("Vx\'94,\'94Vy\'94,\'94Vz\'94) /* depends of the variables with better amount of information manually selected */\
data#<-NameOptimalModel[vars]}