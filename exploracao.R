perfil <- read.csv("perfil.csv")
library(scales)
library(extrafont)
loadfonts()
head(perfil)

#png(file="fxetaria.png",units='mm',width=180,height=100,res=600)

par(family='Bodoni MT',bty='l',mar=c(4,4,1,1))
barplot(prop.table(table(perfil$tipo.texto,perfil$fx.etaria),2),border=NA,
        col=c(alpha("moccasin",0.75),alpha("khaki",0.75),alpha("lemonchiffon",0.75),
              alpha("firebrick1",0.75),alpha("brown4",0.75),alpha("brown4",0.75)[as.numeric(perfil$tipo.texto)]),
        ylim=c(0,1),ylab="Proporção",xaxt='n',xlab="Faixa etária (anos)",
        xlim=c(0,10))
axis(side=1, at=c(0.6,1.9,3.2,4.2,5.5), labels=c("18-23","24-30","31-40","41-50","51-60"))

legend("topright",bty='n',legend=c("Desabafo","Dicas","Dicas leitura",
                                   "Ensaios","Tutorial"),
       fill=c(alpha("moccasin",0.75),alpha("khaki",0.75),alpha("lemonchiffon",0.75),
             alpha("firebrick1",0.75),alpha("brown4",0.75),alpha("brown4",0.75)),
       border=NA,cex=1.3)

#dev.off()



perfil$ocup<-factor(perfil$ocup,levels=levels(perfil$ocup)[c(4,5,2,8,11,7,1,3,9,10,6)])

#png(file="tipotexto.png",units='mm',width=420,height=120,res=600)
par(family='Bodoni MT',bty='l',mar=c(4,4,1,1))
barplot(prop.table(table(perfil$tipo.texto,perfil$ocup),2),border=NA,las=1,
        col=c(alpha("moccasin",0.75),alpha("khaki",0.75),alpha("lemonchiffon",0.75),
              alpha("firebrick1",0.75),alpha("brown4",0.75),alpha("brown4",0.75)[as.numeric(perfil$tipo.texto)]),
        ylim=c(0,1),xlab="Ocupação",ylab="Proporção",xaxt='n',xlim=c(0,15))
axis(side=1, at=c(0.7,1.9,3,4.2,5.4,6.6,7.9,9.1,10.3,11.5,12.7), 
                  labels=c("Graduação","Mestrado","Doutorado","Pós-doc","Prof Univ",
                               "Pesquisador","Desempregado","Especialista","Prof Básico","Prof Técnico",
                               "Outro"),las=1)

legend("topright",bty='n',legend=c("Desabafo","Dicas","Dicas leitura",
                                   "Ensaios","Tutorial"),
       fill=c(alpha("moccasin",0.75),alpha("khaki",0.75),alpha("lemonchiffon",0.75),
              alpha("firebrick1",0.75),alpha("brown4",0.75),alpha("brown4",0.75)),
       border=NA,cex=1.3)
#dev.off()

#png(file="residencia.png",units='mm',width=160,height=120,res=600)
par(family='Bodoni MT',bty='l',mar=c(4,4,1,1))
barplot(prop.table(table(perfil$tipo.texto,perfil$pais),2),border=NA,las=1,
        col=c(alpha("moccasin",0.75),alpha("khaki",0.75),alpha("lemonchiffon",0.75),
              alpha("firebrick1",0.75),alpha("brown4",0.75),alpha("brown4",0.75)[as.numeric(perfil$tipo.texto)]),xlab="País",ylab="Proporção",
        ylim=c(0,1),xaxt='n',xlim=c(0,4))
axis(side=1,at=c(0.8,1.8),labels=c("Brasil","Exterior"))
legend("topright",bty='n',legend=c("Desabafo","Dicas","Dicas leitura",
                                   "Ensaios","Tutorial"),
       fill=c(alpha("moccasin",0.75),alpha("khaki",0.75),alpha("lemonchiffon",0.75),
              alpha("firebrick1",0.75),alpha("brown4",0.75),alpha("brown4",0.75)),
       border=NA,cex=1.3)
#dev.off()

#png(file="sexo.png",units='mm',width=160,height=120,res=600)
par(family='Bodoni MT',bty='l',mar=c(4,4,1,1))
barplot(prop.table(table(perfil$tipo.texto,perfil$genero),2),border=NA,las=1,
        col=c(alpha("moccasin",0.75),alpha("khaki",0.75),alpha("lemonchiffon",0.75),
              alpha("firebrick1",0.75),alpha("brown4",0.75),alpha("brown4",0.75)[as.numeric(perfil$tipo.texto)]),
        xlab="Gênero",ylab="Proporção",ylim=c(0,1),xaxt='n',xlim=c(0,4))
axis(side=1,at=c(0.6,1.9),labels=c("Feminino","Masculino"))
legend("topright",bty='n',legend=c("Desabafo","Dicas","Dicas leitura",
                                   "Ensaios","Tutorial"),
       fill=c(alpha("moccasin",0.75),alpha("khaki",0.75),alpha("lemonchiffon",0.75),
              alpha("firebrick1",0.75),alpha("brown4",0.75),alpha("brown4",0.75)),
       border=NA,cex=1.3)
#dev.off()