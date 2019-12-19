# Author: Sara Edwards
# Date: December 2019


# Instructions ------------------------------------------------------------

# Code only uses base R; No additional R packages are necessary

# Simply select all & run 
# (if you use R studio don't have it full screen)

# Short cut keys to "run all": 
# click anywhere on code script then: 
# R studio Mac: Option+command+R
#           PC: Control+Alt+R

# In base R Mac: Command+A then Command+Enter
#            PC: Ctrl+A then Ctrl+R








# shapes ------------------------------------------------------------------

B1x <- c(1:2, 1:4, 2:5, 4:6, 5:6, 6:7, 7:8, 7:8, 8:9, 8:9, rep(9, 3), rep(8:9, 5), 8, 6:7, 6, rep(7:8, 4), 6:7, 6:7, 5:6, 4:5, 0:4, 0:3) 

B1y <- c(6,6, rep(7, 4), rep(8, 4), rep(9, 3), rep(10:15, each=2), 16:18, rep(19:23, each=2), 24, 25,25, 26, rep(27:34, each=2), rep(35, 5), rep(36, 4))


B2x <- c(1, 1:3, 4, 4:5, 5:6, 6, 6:7, 7, rep(7:8, 3), 7, 7, 1,7, 1,7, 2:3,6,7, 3:7, 0:5, 0,5,6, 0, 6, 6, 5, 5, 4, 0:3)
B2y <- c(8, 9,9,9, 10, 11,11, 12,12, 13, 14,14, 15, rep(16:18, each=2), 19, 20, 21,21, 22,22, rep(23, 4), rep(24, 5), rep(26, 6), rep(27, 3), 28:33, rep(34, 4))


B3x <- c(1:3, 1:3, 1:4, 1:5, 1:5, rep(1:6, 6), 2:6, 2:6, 4:5, 1:4, 1:6, 0:5, 0:5, 0:4, 0:4, 0:3)
B3y <- c(rep(10:11, each=3), rep(12, 4), rep(13:14, each=5), rep(15:20, each=6), rep(21:22, each=5), 23,23, rep(27, 4), rep(28:30, each=6), rep(31:32, each=5), rep(33, 4) )



B4x <- c(8,8,8, 8:9, 9, 0,9,10, 0,9,10, 0,10,11, 0,10,11, 0,11, rep(c(0,11,16), 3), 0,10,11,15, 0,10,11,14, 0,10,14, 0,13, 0,13, 0,12,13, 0,12,13, 0,11,12, 0,10,11, 0,1,10, 0:2, 0:5, 7, 9, 9:10, 10, rep(10:11, 3), rep(11:12, 3), 0:1,3,12,  0:2,4:5,13, 2,6,14, 2,6, 7,7 )

B4y <- c(1:3, 4,4, 5, rep(6:9, each=3), 10,10,  rep(11:13, each=3),  rep(14:15, each=4), rep(16, 3), rep(17:18, each=2), rep(19:24, each=3), rep(25, 6), 26, 28, rep(29, 2), 30, rep(31:36, each=2), rep(37, 4), rep(38, 6), rep(39, 3), rep(40, 2), 41, 42)

Df.beetle <- data.frame(X = c(B1x, -B1x, B2x, -B2x, B3x, -B3x, B4x, -B4x),
                        Y = c(B1y, B1y, B2y, B2y, B3y, B3y, B4y, B4y),
                        Col = c(
                          rep("aDk.bl", length(B1x)*2),
                          rep("bMd.bl", length(B2x)*2),
                          rep("cLt.bl", length(B3x)*2),
                          rep("dblack", length(B4x)*2)
                        ) )



G1x <- c(6:10, 5:6,10:11, 4:5,11:12, 4,13, 3:4,13, 3,13, 2:3,12:13, 2,11:12, 1:2,11, 1,11, 0:1,9:10, 10, 10, 9:10, 9, 9, 8,9, 8, 8, 8:9, 9:12,14:15, 15:16, 16:17, 17, 17, 16,17, 0:5,15:16, 6:12,14:15, 5:6, 6:7, 7:8, rep(8,4), 7:8, 6:7, 5:6, 4:5, 0:4)

G1y <- c(rep(1, 5), rep(2, 4), rep(3, 4), rep(4, 2), rep(5, 3), rep(6, 2), rep(7, 4), rep(8, 3), rep(9, 3), rep(10, 2), rep(11, 4), 12, 13, rep(14, 2), 15, 16, rep(17, 2), 18, 19, rep(20, 2), rep(21, 6), rep(22, 2), rep(23, 2), 24, 25, rep(26, 2), rep(27, 8), rep(28, 9), rep(31:33,each=2), 34:37, rep(38:41,each=2), rep(42,5))



G2x <- c(7:9, 7:10, 5:6,8:12, 5:7,9:12, 4:8,10:12, 4:9,11, 3:10, 3:10, 2:10, 2:9, 0:9, 0:9, 1:8, 1:8, 0,6:8, 6:7, 6:7, 0,6:7, 6:7, 6:8, 0,6:12,14, 6:12,14,15, 6:12,14:16, 0,6:12,14:16, 0,6:12,14:15, 6:12,14, 0:4, 2:5, 0:1,3:6, 0:7, 1:7, 0:7, 0:2,4:7, 0:2,4:6, 0:5, 0:4, 0:3, rep(1:5, 11))

G2y <- c(rep(2, 3), rep(3, 4), rep(4, 7), rep(5, 7), rep(6, 8), rep(7, 7), rep(8, 8), rep(9, 8), rep(10, 9), rep(11, 8), rep(12, 10), rep(13, 10), rep(14, 8), rep(15, 8), rep(16, 4), rep(17, 2), rep(18, 2), rep(19, 3), rep(20, 2), rep(21, 3), rep(22, 9), rep(23, 9), rep(24, 10), rep(25, 11), rep(26, 10), rep(27, 8),rep(31, 5), rep(32, 4), rep(33, 6), rep(34, 8), rep(35, 7), rep(36, 8), rep(37, 7), rep(38, 6), rep(39, 6), rep(40, 5), rep(41, 4), rep(16:26, each=5) )


G3x <- c(rep(c(1,3,5), 3))
G3y <- c(rep(28:30, each=3))

G4x <- c(rep(c(0,2,4), 3))
G4y <- c(rep(28:30, each=3))

G5x <- c(rep(0,9),1,2,0,3,3)
G5y <- c(14,15, 17,18, 20,21, 23,24, 32, 32, 33, 35,37,38)

G6x <- c(6:10, rep(13,8))
G6y <- c(3:7, 21:28)

Df.ginger <- data.frame(X = c(G1x, -G1x, G2x, -G2x, G3x, -G3x, rep(2:4,6), G4x, -G4x, rep(2:4,5), G5x, -G5x, G6x, -G6x),
                        Y = c(G1y,  G1y, G2y,  G2y, G3y,  G3y, rep(seq(17,27, by=2), each=3), G4y,  G4y, rep(seq(18,26, by=2), each=3), G5y,  G5y,  G6y,  G6y),
                        Col = c(
                          rep("a.Dk.brown", length(G1x)*2),
                          rep("b.Lt.brown", length(G2x)*2),
                          rep("c.red", length(G3x)*2 + 18),
                          rep("d.green", length(G4x)*2 + 15),
                          rep("e.black", length(G5x)*2),
                          rep("f.silver", length(G6x)*2)
                        ) )





Holx <- c(1, rep(2,2), rep(3,3), rep(4,5), rep(5,5), rep(6,4), rep(7,6), rep(8,6), rep(9,5), rep(10,3), rep(11,4), rep(12,7), rep(13,8), rep(14,8), rep(15,6), 16)
Holy <- c(9, 8:9, 8:10, 7:11, 6:10, 7:10, 6:11, 5:10, 6:10, 6:8, 7,10,12,13, 7,9:14, 8:15, 9:16, 10,13:17, 14)

Berx <- c(12,12,13,13,15,15,16,16)
Bery <- c(4,5,4,5,5,6,5,6)



Sn1x <- c(1, rep(2,3), 3, rep(4,6), rep(5,5), rep(6,8), rep(7,4), rep(8,3), rep(9,4), rep(10,9))
Sn1x <- c(Sn1x , rep(11,12), 22-Sn1x ) 
Sn1y <- c(12, 11:13, 12, 5,7,11,13,17,19, 6,7,12,17,18, 5:7,11,13,17:19, 8,10,14,16, 9,12,15, 8,10,14,16, 3,5,7,11:13,17,19,21)
Sn1y <- c(Sn1y, 2:4, 6,9,11,13,15,18,20:22,Sn1y)
Sn2x <- c(1, rep(2,2), rep(3,3), rep(4,6), rep(5,3), rep(6,6), rep(7,4), rep(8,2), rep(9,6), rep(10,9))
Sn2x <- c(Sn2x, rep(11,8), 22-Sn2x)
Sn2y <- c(11, 10,12, 9,11,13, 4,6,10,12,16,18, 5,11,17, 4,6,10,12,16,18, 7,9,13,15, 8,14, 3,7,9,13,15,19, 2,4,6,10:12,16,18,20)
Sn2y  <- c(Sn2y , c(1,3,5,10,12,17,19,21), Sn2y)



# plot setup --------------------------------------------------------------

A <- c(-200:200)
B <- c(-200:200)

dev.new(width=10, height=7, unit="in", noRStudioGD = T) 

par(family='serif', bg='snow2', mar=c(1,0,1,0))
plot(A ~ B, type='n', axes=FALSE)


beetle.gold <- c('goldenrod3', 'goldenrod2', 'goldenrod1','gray25')
beetle.red <- c('firebrick4','firebrick3', 'firebrick2','gray25') 
beetle.green <- c('darkgreen','forestgreen', 'chartreuse4','gray25') 

# loops -------------------------------------------------------------------
# border:
for (i in seq(-200, 200, by = 25)){
  
  points( Df.beetle$X/1.5 + i,
          y = if((i %% 2) == 0) {-Df.beetle$Y/1.5 + 200}
          else {Df.beetle$Y/1.5 + 150},
          col = if( (i %in% seq(-200, 175, by = 75)) ) {beetle.green[Df.beetle$Col]}
          else if( (i %in% seq(-175, 200, by = 75)) ){beetle.red[Df.beetle$Col]}
          else {beetle.gold[Df.beetle$Col]},
          pch = 15, 
          cex = 0.5 )
  
  points( Df.beetle$X/1.5 + i,
          y = if((i %% 2) == 0) {Df.beetle$Y/1.5 - 180}
          else {-Df.beetle$Y/1.5 - 170},
          col = if( (i %in% seq(-200, 175, by = 75)) ) {beetle.red[Df.beetle$Col]}
          else if( (i %in% seq(-175, 200, by = 75)) ){beetle.gold[Df.beetle$Col]}
          else {beetle.green[Df.beetle$Col]},
          pch = 15, 
          cex = 0.5 )
  
  points(x = if((i %% 2) == 0) {Sn1x/1.2 + i-10}
         else {Sn2x/1.2 + i-10}, 
         y = if((i %% 2) == 0){Sn1y/1.2 + 150}
         else {Sn2y/1.2 + 180}, 
         pch=15, 
         col= 'gray35', 
         cex=0.3)
  
  points(x = if((i %% 2) == 0) {Sn2x/1.2 + i-10}
         else {Sn1x/1.2 + i-10},
         y = if((i %% 2) == 0){Sn2y/1.2 - 200}
         else {Sn1y/1.2 - 170},
         pch=15,
         col='gray35',
         cex=0.3)
  
}

# 

# lines -------------------------------------------------------------------

abline(h=c(210, 140, -210, -138), col='darkred', lwd=2, xpd=NA)
abline(h=c(215, 205, 145, 135, -215, -205, -133,  -143), col='darkred', lty=6, xpd=NA)



# Points ------------------------------------------------------------------


points(Df.ginger$X*3.5 +150, 
       Df.ginger$Y*3.5 - 60,
       col=c('tan4', 'tan3', 'red4','forestgreen', 'black', 
             'snow3')[Df.ginger$Col],
       pch=15, 
       cex=1.1)


points(Holx*5-200, Holy*5 + 25, pch=15, col='darkgreen', cex=2)
points(Berx*5-200, Bery*5 + 25, pch=15, col='red3', cex=2)


# text -----------------------------------------------------------------

text(-55, 60, "Happy", cex=6, col='darkred', font=3)
text(0, -20, "Holidays!", cex=6, col='darkred', font=3)

Days1 <- "* Koliada *  Chalica * Shab-e Yalda * Las Posadas * Solstice * Hogswatch * Winter break * Hanukkah * Festivus * Hogmanay * Dongzhi Festival * Christmas * Chanukah *"

Days2 <- "* Yule * Kwanzaa * Pancha Ganapati * Hogswatch * Las Posadas * Solstice * Bodhi Day * Chanukah * Newtonmas * Winter break * Saturnalia * Krampusnacht * Malkh * "

mtext(Days1, 1, line=0, cex=0.8, col="darkgreen", font=4)
mtext(Days2, 3, line=0, cex=0.8, col="darkgreen", font=4)
text(195,-128, "S.Edwards 2019", cex=0.8, col="darkgreen", font=3, xpd=NA)
