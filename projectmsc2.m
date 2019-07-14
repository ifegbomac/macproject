% this code builds a  neural network with spins not interacting with
% themselves
clc
diagonaling=reshape(zeros(50),[1,2500]);
%Reading Images
A = imread('Image0.png');
B= imread('Image1.png');
C = imread('Image2.png');
D = imread('Image3.png');
E = imread('Image4.png');
F = imread('Image5.png');
G = imread('Image6.png');
H = imread('Image7.png');
I = imread('Image8.png');
J = imread('Image9.png');
%Converting images to 2D 
grayImageA = rgb2gray(A);
grayImageB = rgb2gray(B);
grayImageC = rgb2gray(C);
grayImageD = rgb2gray(D);
grayImageE = rgb2gray(E);
grayImageF = rgb2gray(F);
grayImageG = rgb2gray(G);
grayImageH = rgb2gray(H);
grayImageI = rgb2gray(I);
grayImageJ = rgb2gray(J);
%Converting Images to a 50 by 50 Matrix
imageresizeA = imresize(grayImageA,[50 50]);
imageresizeB = imresize(grayImageB,[50 50]);
imageresizeC = imresize(grayImageC,[50 50]);
imageresizeD = imresize(grayImageD,[50 50]);
imageresizeE = imresize(grayImageE,[50 50]);
imageresizeF = imresize(grayImageF,[50 50]);
imageresizeG = imresize(grayImageG,[50 50]);
imageresizeH = imresize(grayImageH,[50 50]);
imageresizeI = imresize(grayImageI,[50 50]);
imageresizeJ = imresize(grayImageJ,[50 50]);
%  calculating luminance level of black and white colours
level_A = graythresh(imageresizeA);
level_B = graythresh(imageresizeB);
level_C = graythresh(imageresizeC);
level_D = graythresh(imageresizeD);
level_E = graythresh(imageresizeE);
level_F = graythresh(imageresizeF);
level_G = graythresh(imageresizeG);
level_H = graythresh(imageresizeH);
level_I = graythresh(imageresizeI);
level_J = graythresh(imageresizeJ);
%converting Image Int8 value to double
spinvalueA=double(imageresizeA);
spinvalueB=double(imageresizeB);
spinvalueC=double(imageresizeC);
spinvalueD=double(imageresizeD);
spinvalueE=double(imageresizeE);
spinvalueF=double(imageresizeF);
spinvalueG=double(imageresizeG);
spinvalueH=double(imageresizeH);
spinvalueI=double(imageresizeI);
spinvalueJ=double(imageresizeJ);
%Calculating interaction energgy of spins for patterns A to J
spinvalueA(spinvalueA<(level_A*255))=-1;
spinvalueA(spinvalueA>=(level_A*255))=1;
spinvalueAReshape=reshape(spinvalueA,[1,2500]);
n=1
for n=1:50;
   
    interA1=spinvalueA(n,1).*spinvalueA(:,:)
    interA1=[reshape(interA1,[1,2500])]
    InterEnergy_A1(n,:)=  interA1 
end
for n=1:50;
   
    interA2=spinvalueA(n,2).*spinvalueA(:,:)
    interA2=[reshape(interA2,[1,2500])]
    InterEnergy_A2(n,:)=  interA2 
end

for n=1:50;
   
    interA3=spinvalueA(n,3).*spinvalueA(:,:);
    interA3=[reshape(interA3,[1,2500])];
    InterEnergy_A3(n,:)=  interA3 ;
end

for n=1:50;
   
    interA4=spinvalueA(n,4).*spinvalueA(:,:);
    interA4=[reshape(interA4,[1,2500])];
    InterEnergy_A4(n,:)=  interA4 ;
end

for n=1:50;
    interA5=spinvalueA(n,5).*spinvalueA(:,:);
    interA5=[reshape(interA5,[1,2500])]
    InterEnergy_A5(n,:)=  interA5 
end

for n=1:50;
    interA6=spinvalueA(n,6).*spinvalueA(:,:)
    interA6=[reshape(interA6,[1,2500])]
    InterEnergy_A6(n,:)=  interA6 
end

for n=1:50;
    interA7=spinvalueA(n,7).*spinvalueA(:,:)
    interA7=[reshape(interA7,[1,2500])]
    InterEnergy_A7(n,:)=  interA7 
end

for n=1:50;
    interA8=spinvalueA(n,8).*spinvalueA(:,:)
    interA8=[reshape(interA8,[1,2500])]
    InterEnergy_A8(n,:)=  interA8
end

for n=1:50;
    interA9=spinvalueA(n,9).*spinvalueA(:,:)
    interA9=[reshape(interA9,[1,2500])]
    InterEnergy_A9(n,:)=  interA9 
end

for n=1:50;
   interA10=spinvalueA(n,10).*spinvalueA(:,:)
    interA10=[reshape(interA10,[1,2500])]
    InterEnergy_A10(n,:)=  interA10 
end

for n=1:50;
    interA11=spinvalueA(n,11).*spinvalueA(:,:)
    interA11=[reshape(interA11,[1,2500])]
    InterEnergy_A11(n,:)=  interA11
end

for n=1:50;
  interA12=spinvalueA(n,12).*spinvalueA(:,:)
    interA12=[reshape(interA12,[1,2500])]
    InterEnergy_A12(n,:)=  interA12
end

for n=1:50;
   interA13=spinvalueA(n,13).*spinvalueA(:,:)
    interA13=[reshape(interA13,[1,2500])]
    InterEnergy_A13(n,:)=  interA13
end

for n=1:50;
  interA14=spinvalueA(n,14).*spinvalueA(:,:)
    interA14=[reshape(interA14,[1,2500])]
    InterEnergy_A14(n,:)=  interA14 
end

for n=1:50;
   interA15=spinvalueA(n,15).*spinvalueA(:,:)
    interA15=[reshape(interA15,[1,2500])]
    InterEnergy_A15(n,:)=  interA15 
end

for n=1:50;
  interA16=spinvalueA(n,16).*spinvalueA(:,:)
    interA16=[reshape(interA16,[1,2500])]
    InterEnergy_A16(n,:)=  interA16 
end

for n=1:50;
    interA17=spinvalueA(n,17).*spinvalueA(:,:)
    interA17=[reshape(interA17,[1,2500])];
    InterEnergy_A17(n,:)=  interA17 
end

for n=1:50;
   interA18=spinvalueA(n,18).*spinvalueA(:,:)
    interA18=[reshape(interA18,[1,2500])]
    InterEnergy_A18(n,:)=  interA18 
end

for n=1:50;
   interA19=spinvalueA(n,19).*spinvalueA(:,:)
    interA19=[reshape(interA19,[1,2500])]
    InterEnergy_A19(n,:)=  interA19
end

for n=1:50;
    interA20=spinvalueA(n,20).*spinvalueA(:,:)
    interA20=[reshape(interA20,[1,2500])]
    InterEnergy_A20(n,:)=  interA20 
end
for n=1:50;
   
    interA21=spinvalueA(n,21).*spinvalueA(:,:)
    interA21=[reshape(interA21,[1,2500])]
    InterEnergy_A21(n,:)=  interA21 
end
for n=1:50;
   
    interA22=spinvalueA(n,22).*spinvalueA(:,:)
    interA22=[reshape(interA22,[1,2500])]
    InterEnergy_A22(n,:)=  interA22 
end

for n=1:50;
   
    interA23=spinvalueA(n,23).*spinvalueA(:,:)
    interA23=[reshape(interA23,[1,2500])]
    InterEnergy_A23(n,:)=  interA23 
end

for n=1:50;
   
    interA24=spinvalueA(n,24).*spinvalueA(:,:)
    interA24=[reshape(interA24,[1,2500])]
    InterEnergy_A24(n,:)=  interA24 
end

for n=1:50;
    interA25=spinvalueA(n,25).*spinvalueA(:,:)
    interA25=[reshape(interA25,[1,2500])]
    InterEnergy_A25(n,:)=  interA25 
end

for n=1:50;
    interA26=spinvalueA(n,26).*spinvalueA(:,:)
    interA26=[reshape(interA26,[1,2500])]
    InterEnergy_A26(n,:)=  interA26 
end

for n=1:50;
    interA27=spinvalueA(n,27).*spinvalueA(:,:)
    interA27=[reshape(interA27,[1,2500])]
    InterEnergy_A27(n,:)=  interA27 
end

for n=1:50;
    interA28=spinvalueA(n,28).*spinvalueA(:,:)
    interA28=[reshape(interA28,[1,2500])]
    InterEnergy_A28(n,:)=  interA28
end

for n=1:50;
    interA29=spinvalueA(n,29).*spinvalueA(:,:)
    interA29=[reshape(interA29,[1,2500])]
    InterEnergy_A29(n,:)=  interA29 
end

for n=1:50;
   interA30=spinvalueA(n,30).*spinvalueA(:,:)
    interA30=[reshape(interA30,[1,2500])]
    InterEnergy_A30(n,:)=  interA30 
end
for n=1:50;
    interA31=spinvalueA(n,31).*spinvalueA(:,:)
    interA31=[reshape(interA31,[1,2500])]
    InterEnergy_A31(n,:)=  interA31
end

for n=1:50;
  interA32=spinvalueA(n,32).*spinvalueA(:,:)
    interA32=[reshape(interA32,[1,2500])]
    InterEnergy_A32(n,:)=  interA32
end

for n=1:50;
   interA33=spinvalueA(n,33).*spinvalueA(:,:)
    interA33=[reshape(interA33,[1,2500])]
    InterEnergy_A33(n,:)=  interA33
end

for n=1:50;
  interA34=spinvalueA(n,34).*spinvalueA(:,:)
    interA34=[reshape(interA34,[1,2500])]
    InterEnergy_A34(n,:)=  interA34 
end

for n=1:50;
   interA35=spinvalueA(n,35).*spinvalueA(:,:)
    interA35=[reshape(interA35,[1,2500])]
    InterEnergy_A35(n,:)=  interA35 
end

for n=1:50;
  interA36=spinvalueA(n,36).*spinvalueA(:,:)
    interA36=[reshape(interA36,[1,2500])]
    InterEnergy_A36(n,:)=  interA36 
end

for n=1:50;
    interA37=spinvalueA(n,37).*spinvalueA(:,:)
    interA37=[reshape(interA37,[1,2500])]
    InterEnergy_A37(n,:)=  interA37 
end

for n=1:50;
   interA38=spinvalueA(n,38).*spinvalueA(:,:)
    interA38=[reshape(interA38,[1,2500])]
    InterEnergy_A38(n,:)=  interA38 
end

for n=1:50;
   interA39=spinvalueA(n,39).*spinvalueA(:,:)
    interA39=[reshape(interA39,[1,2500])]
    InterEnergy_A39(n,:)=  interA39
end
for n=1:50;
    interA40=spinvalueA(n,40).*spinvalueA(:,:)
    interA40=[reshape(interA40,[1,2500])]
    InterEnergy_A40(n,:)=  interA40 
end


for n=1:50;
    interA41=spinvalueA(n,41).*spinvalueA(:,:)
    interA41=[reshape(interA41,[1,2500])]
    InterEnergy_A41(n,:)=  interA41
end

for n=1:50;
  interA42=spinvalueA(n,42).*spinvalueA(:,:)
    interA42=[reshape(interA42,[1,2500])]
    InterEnergy_A42(n,:)=  interA42
end

for n=1:50;
   interA43=spinvalueA(n,43).*spinvalueA(:,:)
    interA43=[reshape(interA43,[1,2500])]
    InterEnergy_A43(n,:)=  interA43
end

for n=1:50;
  interA44=spinvalueA(n,44).*spinvalueA(:,:)
    interA44=[reshape(interA44,[1,2500])]
    InterEnergy_A44(n,:)=  interA44 
end

for n=1:50;
   interA45=spinvalueA(n,45).*spinvalueA(:,:)
    interA45=[reshape(interA45,[1,2500])]
    InterEnergy_A45(n,:)=  interA45 
end

for n=1:50;
  interA46=spinvalueA(n,46).*spinvalueA(:,:)
    interA46=[reshape(interA46,[1,2500])]
    InterEnergy_A46(n,:)=  interA46 
end

for n=1:50;
    interA47=spinvalueA(n,47).*spinvalueA(:,:)
    interA47=[reshape(interA47,[1,2500])]
    InterEnergy_A47(n,:)=  interA47 
end

for n=1:50;
   interA48=spinvalueA(n,48).*spinvalueA(:,:)
    interA48=[reshape(interA48,[1,2500])]
    InterEnergy_A48(n,:)=  interA48 
end

for n=1:50;
   interA49=spinvalueA(n,49).*spinvalueA(:,:)
    interA49=[reshape(interA49,[1,2500])]
    InterEnergy_A49(n,:)=  interA49
end

for n=1:50;
    interA50=spinvalueA(n,50).*spinvalueA(:,:)
    interA50=[reshape(interA50,[1,2500])]
    InterEnergy_A50(n,:)=  interA50 
end

InterEnergy_A=[ InterEnergy_A1; InterEnergy_A2; InterEnergy_A3; InterEnergy_A4; InterEnergy_A5; InterEnergy_A6;...
     InterEnergy_A7; InterEnergy_A8; InterEnergy_A9; InterEnergy_A10; InterEnergy_A11; InterEnergy_A12;...
      InterEnergy_A13; InterEnergy_A14; InterEnergy_A15; InterEnergy_A16; InterEnergy_A17; InterEnergy_A18;...
       InterEnergy_A19; InterEnergy_A20 ; InterEnergy_A21; InterEnergy_A22; InterEnergy_A23; InterEnergy_A24; InterEnergy_A25; InterEnergy_A26;...
     InterEnergy_A27; InterEnergy_A28; InterEnergy_A29; InterEnergy_A30; InterEnergy_A31; InterEnergy_A32;...
      InterEnergy_A33; InterEnergy_A34; InterEnergy_A35; InterEnergy_A36; InterEnergy_A37; InterEnergy_A38;...
       InterEnergy_A39; InterEnergy_A40 ; InterEnergy_A41; InterEnergy_A42; InterEnergy_A43; InterEnergy_A44; InterEnergy_A45; InterEnergy_A46;...
     InterEnergy_A47; InterEnergy_A48; InterEnergy_A49; InterEnergy_A50 ];
 
  %Replacing of diagonals with spin values
   InterEnergy_A = InterEnergy_A - diag(diag(InterEnergy_A)) + diag(diagonaling);
   
 spinvalueB(spinvalueB<(level_B*255))=-1;
spinvalueB(spinvalueB>=(level_B*255))=1;
spinvalueBReshape=reshape(spinvalueB,[1,2500]);


for n=1:50;
   
    interB1=spinvalueB(n,1).*spinvalueB(:,:)
    interB1=[reshape(interB1,[1,2500])]
    InterEnergy_B1(n,:)=  interB1 
end
for n=1:50;
   
    interB2=spinvalueB(n,2).*spinvalueB(:,:)
    interB2=[reshape(interB2,[1,2500])]
    InterEnergy_B2(n,:)=  interB2 
end

for n=1:50;
   
    interB3=spinvalueB(n,3).*spinvalueB(:,:)
    interB3=[reshape(interB3,[1,2500])]
    InterEnergy_B3(n,:)=  interB3 
end

for n=1:50;
   
    interB4=spinvalueB(n,4).*spinvalueB(:,:)
    interB4=[reshape(interB4,[1,2500])]
    InterEnergy_B4(n,:)=  interB4 
end

for n=1:50;
    interB5=spinvalueB(n,5).*spinvalueB(:,:)
    interB5=[reshape(interB5,[1,2500])]
    InterEnergy_B5(n,:)=  interB5 
end

for n=1:50;
    interB6=spinvalueB(n,6).*spinvalueB(:,:)
    interB6=[reshape(interB6,[1,2500])]
    InterEnergy_B6(n,:)=  interB6 
end

for n=1:50;
    interB7=spinvalueB(n,7).*spinvalueB(:,:)
    interB7=[reshape(interB7,[1,2500])]
    InterEnergy_B7(n,:)=  interB7 
end

for n=1:50;
    interB8=spinvalueB(n,8).*spinvalueB(:,:)
    interB8=[reshape(interB8,[1,2500])]
    InterEnergy_B8(n,:)=  interB8
end

for n=1:50;
    interB9=spinvalueB(n,9).*spinvalueB(:,:)
    interB9=[reshape(interB9,[1,2500])]
    InterEnergy_B9(n,:)=  interB9 
end

for n=1:50;
   interB10=spinvalueB(n,10).*spinvalueB(:,:)
    interB10=[reshape(interB10,[1,2500])]
    InterEnergy_B10(n,:)=  interB10 
end

for n=1:50;
    interB11=spinvalueB(n,11).*spinvalueB(:,:)
    interB11=[reshape(interB11,[1,2500])]
    InterEnergy_B11(n,:)=  interB11
end

for n=1:50;
  interB12=spinvalueB(n,12).*spinvalueB(:,:)
    interB12=[reshape(interB12,[1,2500])]
    InterEnergy_B12(n,:)=  interB12;
end

for n=1:50;
   interB13=spinvalueB(n,13).*spinvalueB(:,:)
    interB13=[reshape(interB13,[1,2500])]
    InterEnergy_B13(n,:)=  interB13
end

for n=1:50;
  interB14=spinvalueB(n,14).*spinvalueB(:,:)
    interB14=[reshape(interB14,[1,2500])]
    InterEnergy_B14(n,:)=  interB14 
end

for n=1:50;
   interB15=spinvalueB(n,15).*spinvalueB(:,:)
    interB15=[reshape(interB15,[1,2500])]
    InterEnergy_B15(n,:)=  interB15 
end

for n=1:50;
  interB16=spinvalueB(n,16).*spinvalueB(:,:)
    interB16=[reshape(interB16,[1,2500])]
    InterEnergy_B16(n,:)=  interB16 
end

for n=1:50;
    interB17=spinvalueB(n,17).*spinvalueB(:,:)
    interB17=[reshape(interB17,[1,2500])]
    InterEnergy_B17(n,:)=  interB17 
end

for n=1:50;
   interB18=spinvalueB(n,18).*spinvalueB(:,:)
    interB18=[reshape(interB18,[1,2500])]
    InterEnergy_B18(n,:)=  interB18 
end

for n=1:50;
   interB19=spinvalueB(n,19).*spinvalueB(:,:)
    interB19=[reshape(interB19,[1,2500])]
    InterEnergy_B19(n,:)=  interB19
end

for n=1:50;
    interB20=spinvalueB(n,20).*spinvalueB(:,:)
    interB20=[reshape(interB20,[1,2500])]
    InterEnergy_B20(n,:)=  interB20 
end
for n=1:50;
   
    interB21=spinvalueB(n,21).*spinvalueB(:,:)
    interB21=[reshape(interB21,[1,2500])]
    InterEnergy_B21(n,:)=  interB21 
end
for n=1:50;
   
    interB22=spinvalueB(n,22).*spinvalueB(:,:)
    interB22=[reshape(interB22,[1,2500])]
    InterEnergy_B22(n,:)=  interB22 
end

for n=1:50;
   
    interB23=spinvalueB(n,23).*spinvalueB(:,:)
    interB23=[reshape(interB23,[1,2500])]
    InterEnergy_B23(n,:)=  interB23 
end

for n=1:50;
   
    interB24=spinvalueB(n,24).*spinvalueB(:,:)
    interB24=[reshape(interB24,[1,2500])]
    InterEnergy_B24(n,:)=  interB24 
end

for n=1:50;
    interB25=spinvalueB(n,25).*spinvalueB(:,:)
    interB25=[reshape(interB25,[1,2500])]
    InterEnergy_B25(n,:)=  interB25 
end

for n=1:50;
    interB26=spinvalueB(n,26).*spinvalueB(:,:)
    interB26=[reshape(interB26,[1,2500])]
    InterEnergy_B26(n,:)=  interB26 
end

for n=1:50;
    interB27=spinvalueB(n,27).*spinvalueB(:,:)
    interB27=[reshape(interB27,[1,2500])]
    InterEnergy_B27(n,:)=  interB27 
end

for n=1:50;
    interB28=spinvalueB(n,28).*spinvalueB(:,:)
    interB28=[reshape(interB28,[1,2500])]
    InterEnergy_B28(n,:)=  interB28
end

for n=1:50;
    interB29=spinvalueB(n,29).*spinvalueB(:,:)
    interB29=[reshape(interB29,[1,2500])]
    InterEnergy_B29(n,:)=  interB29 
end

for n=1:50;
   interB30=spinvalueB(n,30).*spinvalueB(:,:)
    interB30=[reshape(interB30,[1,2500])]
    InterEnergy_B30(n,:)=  interB30 
end
for n=1:50;
    interB31=spinvalueB(n,31).*spinvalueB(:,:)
    interB31=[reshape(interB31,[1,2500])]
    InterEnergy_B31(n,:)=  interB31
end

for n=1:50;
  interB32=spinvalueB(n,32).*spinvalueB(:,:)
    interB32=[reshape(interB32,[1,2500])]
    InterEnergy_B32(n,:)=  interB32
end

for n=1:50;
   interB33=spinvalueB(n,33).*spinvalueB(:,:)
    interB33=[reshape(interB33,[1,2500])]
    InterEnergy_B33(n,:)=  interB33
end

for n=1:50;
  interB34=spinvalueB(n,34).*spinvalueB(:,:)
    interB34=[reshape(interB34,[1,2500])]
    InterEnergy_B34(n,:)=  interB34 
end

for n=1:50;
   interB35=spinvalueB(n,35).*spinvalueB(:,:)
    interB35=[reshape(interB35,[1,2500])]
    InterEnergy_B35(n,:)=  interB35 
end

for n=1:50;
  interB36=spinvalueB(n,36).*spinvalueB(:,:)
    interB36=[reshape(interB36,[1,2500])]
    InterEnergy_B36(n,:)=  interB36 
end

for n=1:50;
    interB37=spinvalueB(n,37).*spinvalueB(:,:)
    interB37=[reshape(interB37,[1,2500])]
    InterEnergy_B37(n,:)=  interB37 
end

for n=1:50;
   interB38=spinvalueB(n,38).*spinvalueB(:,:)
    interB38=[reshape(interB38,[1,2500])]
    InterEnergy_B38(n,:)=  interB38 
end

for n=1:50;
   interB39=spinvalueB(n,39).*spinvalueB(:,:)
    interB39=[reshape(interB39,[1,2500])]
    InterEnergy_B39(n,:)=  interB39
end
for n=1:50;
    interB40=spinvalueB(n,40).*spinvalueB(:,:)
    interB40=[reshape(interB40,[1,2500])]
    InterEnergy_B40(n,:)=  interB40 
end


for n=1:50;
    interB41=spinvalueB(n,41).*spinvalueB(:,:)
    interB41=[reshape(interB41,[1,2500])]
    InterEnergy_B41(n,:)=  interB41
end

for n=1:50;
  interB42=spinvalueB(n,42).*spinvalueB(:,:)
    interB42=[reshape(interB42,[1,2500])]
    InterEnergy_B42(n,:)=  interB42
end

for n=1:50;
   interB43=spinvalueB(n,43).*spinvalueB(:,:)
    interB43=[reshape(interB43,[1,2500])]
    InterEnergy_B43(n,:)=  interB43
end

for n=1:50;
  interB44=spinvalueB(n,44).*spinvalueB(:,:)
    interB44=[reshape(interB44,[1,2500])]
    InterEnergy_B44(n,:)=  interB44 
end

for n=1:50;
   interB45=spinvalueB(n,45).*spinvalueB(:,:)
    interB45=[reshape(interB45,[1,2500])]
    InterEnergy_B45(n,:)=  interB45 
end

for n=1:50;
  interB46=spinvalueB(n,46).*spinvalueB(:,:)
    interB46=[reshape(interB46,[1,2500])]
    InterEnergy_B46(n,:)=  interB46 
end

for n=1:50;
    interB47=spinvalueB(n,47).*spinvalueB(:,:)
    interB47=[reshape(interB47,[1,2500])]
    InterEnergy_B47(n,:)=  interB47 
end

for n=1:50;
   interB48=spinvalueB(n,48).*spinvalueB(:,:)
    interB48=[reshape(interB48,[1,2500])]
    InterEnergy_B48(n,:)=  interB48 
end

for n=1:50;
   interB49=spinvalueB(n,49).*spinvalueB(:,:)
    interB49=[reshape(interB49,[1,2500])]
    InterEnergy_B49(n,:)=  interB49
end

for n=1:50;
    interB50=spinvalueB(n,50).*spinvalueB(:,:)
    interB50=[reshape(interB50,[1,2500])]
    InterEnergy_B50(n,:)=  interB50 
end

InterEnergy_B=[ InterEnergy_B1; InterEnergy_B2; InterEnergy_B3; InterEnergy_B4; InterEnergy_B5; InterEnergy_B6;...
     InterEnergy_B7; InterEnergy_B8; InterEnergy_B9; InterEnergy_B10; InterEnergy_B11; InterEnergy_B12;...
      InterEnergy_B13; InterEnergy_B14; InterEnergy_B15; InterEnergy_B16; InterEnergy_B17; InterEnergy_B18;...
       InterEnergy_B19; InterEnergy_B20 ; InterEnergy_B21; InterEnergy_B22; InterEnergy_B23; InterEnergy_B24; InterEnergy_B25; InterEnergy_B26;...
     InterEnergy_B27; InterEnergy_B28; InterEnergy_B29; InterEnergy_B30; InterEnergy_B31; InterEnergy_B32;...
      InterEnergy_B33; InterEnergy_B34; InterEnergy_B35; InterEnergy_B36; InterEnergy_B37; InterEnergy_B38;...
       InterEnergy_B39; InterEnergy_B40 ; InterEnergy_B41; InterEnergy_B42; InterEnergy_B43; InterEnergy_B44; InterEnergy_B45; InterEnergy_B46;...
     InterEnergy_B47; InterEnergy_B48; InterEnergy_B49; InterEnergy_B50 ];

 InterEnergy_B = InterEnergy_B - diag(diag(InterEnergy_B)) + diag(diagonaling);
   
 spinvalueC(spinvalueC<(level_C*255))=-1;
spinvalueC(spinvalueC>=(level_C*255))=1;
spinvalueCReshape=reshape(spinvalueC,[1,2500]);

for n=1:50;
   
    interC1=spinvalueC(n,1).*spinvalueC(:,:)
    interC1=[reshape(interC1,[1,2500])]
    InterEnergy_C1(n,:)=  interC1 
end
for n=1:50;
   
    interC2=spinvalueC(n,2).*spinvalueC(:,:)
    interC2=[reshape(interC2,[1,2500])]
    InterEnergy_C2(n,:)=  interC2 
end

for n=1:50;
   
    interC3=spinvalueC(n,3).*spinvalueC(:,:)
    interC3=[reshape(interC3,[1,2500])]
    InterEnergy_C3(n,:)=  interC3 
end

for n=1:50;
   
    interC4=spinvalueC(n,4).*spinvalueC(:,:)
    interC4=[reshape(interC4,[1,2500])]
    InterEnergy_C4(n,:)=  interC4 
end

for n=1:50;
    interC5=spinvalueC(n,5).*spinvalueC(:,:)
    interC5=[reshape(interC5,[1,2500])]
    InterEnergy_C5(n,:)=  interC5 
end

for n=1:50;
    interC6=spinvalueC(n,6).*spinvalueC(:,:)
    interC6=[reshape(interC6,[1,2500])]
    InterEnergy_C6(n,:)=  interC6 
end

for n=1:50;
    interC7=spinvalueC(n,7).*spinvalueC(:,:)
    interC7=[reshape(interC7,[1,2500])]
    InterEnergy_C7(n,:)=  interC7 
end

for n=1:50;
    interC8=spinvalueC(n,8).*spinvalueC(:,:)
    interC8=[reshape(interC8,[1,2500])]
    InterEnergy_C8(n,:)=  interC8
end

for n=1:50;
    interC9=spinvalueC(n,9).*spinvalueC(:,:)
    interC9=[reshape(interC9,[1,2500])]
    InterEnergy_C9(n,:)=  interC9 
end

for n=1:50;
   interC10=spinvalueC(n,10).*spinvalueC(:,:)
    interC10=[reshape(interC10,[1,2500])]
    InterEnergy_C10(n,:)=  interC10 
end

for n=1:50;
    interC11=spinvalueC(n,11).*spinvalueC(:,:)
    interC11=[reshape(interC11,[1,2500])]
    InterEnergy_C11(n,:)=  interC11
end

for n=1:50;
  interC12=spinvalueC(n,12).*spinvalueC(:,:)
    interC12=[reshape(interC12,[1,2500])]
    InterEnergy_C12(n,:)=  interC12
end

for n=1:50;
   interC13=spinvalueC(n,13).*spinvalueC(:,:)
    interC13=[reshape(interC13,[1,2500])]
    InterEnergy_C13(n,:)=  interC13
end

for n=1:50;
  interC14=spinvalueC(n,14).*spinvalueC(:,:)
    interC14=[reshape(interC14,[1,2500])]
    InterEnergy_C14(n,:)=  interC14 
end

for n=1:50;
   interC15=spinvalueC(n,15).*spinvalueC(:,:)
    interC15=[reshape(interC15,[1,2500])]
    InterEnergy_C15(n,:)=  interC15 
end

for n=1:50;
  interC16=spinvalueC(n,16).*spinvalueC(:,:)
    interC16=[reshape(interC16,[1,2500])]
    InterEnergy_C16(n,:)=  interC16 
end

for n=1:50;
    interC17=spinvalueC(n,17).*spinvalueC(:,:)
    interC17=[reshape(interC17,[1,2500])]
    InterEnergy_C17(n,:)=  interC17 
end

for n=1:50;
   interC18=spinvalueC(n,18).*spinvalueC(:,:)
    interC18=[reshape(interC18,[1,2500])]
    InterEnergy_C18(n,:)=  interC18 
end

for n=1:50;
   interC19=spinvalueC(n,19).*spinvalueC(:,:)
    interC19=[reshape(interC19,[1,2500])]
    InterEnergy_C19(n,:)=  interC19
end

for n=1:50;
    interC20=spinvalueC(n,20).*spinvalueC(:,:)
    interC20=[reshape(interC20,[1,2500])]
    InterEnergy_C20(n,:)=  interC20 
end
for n=1:50;
   
    interC21=spinvalueC(n,21).*spinvalueC(:,:)
    interC21=[reshape(interC21,[1,2500])]
    InterEnergy_C21(n,:)=  interC21 
end
for n=1:50;
   
    interC22=spinvalueC(n,22).*spinvalueC(:,:)
    interC22=[reshape(interC22,[1,2500])]
    InterEnergy_C22(n,:)=  interC22 
end

for n=1:50;
   
    interC23=spinvalueC(n,23).*spinvalueC(:,:)
    interC23=[reshape(interC23,[1,2500])]
    InterEnergy_C23(n,:)=  interC23 
end

for n=1:50;
   
    interC24=spinvalueC(n,24).*spinvalueC(:,:)
    interC24=[reshape(interC24,[1,2500])]
    InterEnergy_C24(n,:)=  interC24 
end

for n=1:50;
    interC25=spinvalueC(n,25).*spinvalueC(:,:)
    interC25=[reshape(interC25,[1,2500])]
    InterEnergy_C25(n,:)=  interC25 
end

for n=1:50;
    interC26=spinvalueC(n,26).*spinvalueC(:,:)
    interC26=[reshape(interC26,[1,2500])]
    InterEnergy_C26(n,:)=  interC26 
end

for n=1:50;
    interC27=spinvalueC(n,27).*spinvalueC(:,:)
    interC27=[reshape(interC27,[1,2500])]
    InterEnergy_C27(n,:)=  interC27 
end

for n=1:50;
    interC28=spinvalueC(n,28).*spinvalueC(:,:)
    interC28=[reshape(interC28,[1,2500])]
    InterEnergy_C28(n,:)=  interC28
end

for n=1:50;
    interC29=spinvalueC(n,29).*spinvalueC(:,:)
    interC29=[reshape(interC29,[1,2500])]
    InterEnergy_C29(n,:)=  interC29 
end

for n=1:50;
   interC30=spinvalueC(n,30).*spinvalueC(:,:)
    interC30=[reshape(interC30,[1,2500])]
    InterEnergy_C30(n,:)=  interC30 
end
for n=1:50;
    interC31=spinvalueC(n,31).*spinvalueC(:,:)
    interC31=[reshape(interC31,[1,2500])]
    InterEnergy_C31(n,:)=  interC31
end

for n=1:50;
  interC32=spinvalueC(n,32).*spinvalueC(:,:)
    interC32=[reshape(interC32,[1,2500])]
    InterEnergy_C32(n,:)=  interC32
end

for n=1:50;
   interC33=spinvalueC(n,33).*spinvalueC(:,:)
    interC33=[reshape(interC33,[1,2500])]
    InterEnergy_C33(n,:)=  interC33
end

for n=1:50;
  interC34=spinvalueC(n,34).*spinvalueC(:,:)
    interC34=[reshape(interC34,[1,2500])]
    InterEnergy_C34(n,:)=  interC34 
end

for n=1:50;
   interC35=spinvalueC(n,35).*spinvalueC(:,:)
    interC35=[reshape(interC35,[1,2500])]
    InterEnergy_C35(n,:)=  interC35 
end

for n=1:50;
  interC36=spinvalueC(n,36).*spinvalueC(:,:)
    interC36=[reshape(interC36,[1,2500])]
    InterEnergy_C36(n,:)=  interC36 
end

for n=1:50;
    interC37=spinvalueC(n,37).*spinvalueC(:,:)
    interC37=[reshape(interC37,[1,2500])]
    InterEnergy_C37(n,:)=  interC37 
end

for n=1:50;
   interC38=spinvalueC(n,38).*spinvalueC(:,:)
    interC38=[reshape(interC38,[1,2500])]
    InterEnergy_C38(n,:)=  interC38 
end

for n=1:50;
   interC39=spinvalueC(n,39).*spinvalueC(:,:)
    interC39=[reshape(interC39,[1,2500])]
    InterEnergy_C39(n,:)=  interC39
end
for n=1:50;
    interC40=spinvalueC(n,40).*spinvalueC(:,:)
    interC40=[reshape(interC40,[1,2500])]
    InterEnergy_C40(n,:)=  interC40 
end


for n=1:50;
    interC41=spinvalueC(n,41).*spinvalueC(:,:)
    interC41=[reshape(interC41,[1,2500])]
    InterEnergy_C41(n,:)=  interC41
end

for n=1:50;
  interC42=spinvalueC(n,42).*spinvalueC(:,:)
    interC42=[reshape(interC42,[1,2500])]
    InterEnergy_C42(n,:)=  interC42
end

for n=1:50;
   interC43=spinvalueC(n,43).*spinvalueC(:,:)
    interC43=[reshape(interC43,[1,2500])]
    InterEnergy_C43(n,:)=  interC43
end

for n=1:50;
  interC44=spinvalueC(n,44).*spinvalueC(:,:)
    interC44=[reshape(interC44,[1,2500])]
    InterEnergy_C44(n,:)=  interC44 
end

for n=1:50;
   interC45=spinvalueC(n,45).*spinvalueC(:,:)
    interC45=[reshape(interC45,[1,2500])]
    InterEnergy_C45(n,:)=  interC45 
end

for n=1:50;
  interC46=spinvalueC(n,46).*spinvalueC(:,:)
    interC46=[reshape(interC46,[1,2500])]
    InterEnergy_C46(n,:)=  interC46 
end

for n=1:50;
    interC47=spinvalueC(n,47).*spinvalueC(:,:)
    interC47=[reshape(interC47,[1,2500])]
    InterEnergy_C47(n,:)=  interC47 
end

for n=1:50;
   interC48=spinvalueC(n,48).*spinvalueC(:,:)
    interC48=[reshape(interC48,[1,2500])]
    InterEnergy_C48(n,:)=  interC48 
end

for n=1:50;
   interC49=spinvalueC(n,49).*spinvalueC(:,:)
    interC49=[reshape(interC49,[1,2500])]
    InterEnergy_C49(n,:)=  interC49
end

for n=1:50;
    interC50=spinvalueC(n,50).*spinvalueC(:,:)
    interC50=[reshape(interC50,[1,2500])]
    InterEnergy_C50(n,:)=  interC50 
end

InterEnergy_C=[ InterEnergy_C1; InterEnergy_C2; InterEnergy_C3; InterEnergy_C4; InterEnergy_C5; InterEnergy_C6;...
     InterEnergy_C7; InterEnergy_C8; InterEnergy_C9; InterEnergy_C10; InterEnergy_C11; InterEnergy_C12;...
      InterEnergy_C13; InterEnergy_C14; InterEnergy_C15; InterEnergy_C16; InterEnergy_C17; InterEnergy_C18;...
       InterEnergy_C19; InterEnergy_C20 ; InterEnergy_C21; InterEnergy_C22; InterEnergy_C23; InterEnergy_C24; InterEnergy_C25; InterEnergy_C26;...
     InterEnergy_C27; InterEnergy_C28; InterEnergy_C29; InterEnergy_C30; InterEnergy_C31; InterEnergy_C32;...
      InterEnergy_C33; InterEnergy_C34; InterEnergy_C35; InterEnergy_C36; InterEnergy_C37; InterEnergy_C38;...
       InterEnergy_C39; InterEnergy_C40 ; InterEnergy_C41; InterEnergy_C42; InterEnergy_C43; InterEnergy_C44; InterEnergy_C45; InterEnergy_C46;...
     InterEnergy_C47; InterEnergy_C48; InterEnergy_C49; InterEnergy_C50 ];

 InterEnergy_C = InterEnergy_C - diag(diag(InterEnergy_C)) + diag(diagonaling);
 
 spinvalueD(spinvalueD<(level_D*255))=-1;
spinvalueD(spinvalueD>=(level_D*255))=1;
spinvalueDReshape=reshape(spinvalueD,[1,2500]);
 for n=1:50;
   
    interD1=spinvalueD(n,1).*spinvalueD(:,:);
    interD1=[reshape(interD1,[1,2500])];
    InterEnergy_D1(n,:)=  interD1 
end
for n=1:50;
   
    interD2=spinvalueD(n,2).*spinvalueD(:,:)
    interD2=[reshape(interD2,[1,2500])]
    InterEnergy_D2(n,:)=  interD2 
end

for n=1:50;
   
    interD3=spinvalueD(n,3).*spinvalueD(:,:)
    interD3=[reshape(interD3,[1,2500])]
    InterEnergy_D3(n,:)=  interD3 
end

for n=1:50;
   
    interD4=spinvalueD(n,4).*spinvalueD(:,:)
    interD4=[reshape(interD4,[1,2500])]
    InterEnergy_D4(n,:)=  interD4 
end

for n=1:50;
    interD5=spinvalueD(n,5).*spinvalueD(:,:)
    interD5=[reshape(interD5,[1,2500])]
    InterEnergy_D5(n,:)=  interD5 
end

for n=1:50;
    interD6=spinvalueD(n,6).*spinvalueD(:,:)
    interD6=[reshape(interD6,[1,2500])]
    InterEnergy_D6(n,:)=  interD6 
end

for n=1:50;
    interD7=spinvalueD(n,7).*spinvalueD(:,:)
    interD7=[reshape(interD7,[1,2500])]
    InterEnergy_D7(n,:)=  interD7 
end

for n=1:50;
    interD8=spinvalueD(n,8).*spinvalueD(:,:)
    interD8=[reshape(interD8,[1,2500])]
    InterEnergy_D8(n,:)=  interD8
end

for n=1:50;
    interD9=spinvalueD(n,9).*spinvalueD(:,:)
    interD9=[reshape(interD9,[1,2500])]
    InterEnergy_D9(n,:)=  interD9 
end

for n=1:50;
   interD10=spinvalueD(n,10).*spinvalueD(:,:)
    interD10=[reshape(interD10,[1,2500])]
    InterEnergy_D10(n,:)=  interD10 
end

for n=1:50;
    interD11=spinvalueD(n,11).*spinvalueD(:,:)
    interD11=[reshape(interD11,[1,2500])]
    InterEnergy_D11(n,:)=  interD11
end

for n=1:50;
  interD12=spinvalueD(n,12).*spinvalueD(:,:)
    interD12=[reshape(interD12,[1,2500])]
    InterEnergy_D12(n,:)=  interD12
end

for n=1:50;
   interD13=spinvalueD(n,13).*spinvalueD(:,:)
    interD13=[reshape(interD13,[1,2500])]
    InterEnergy_D13(n,:)=  interD13
end

for n=1:50;
  interD14=spinvalueD(n,14).*spinvalueD(:,:)
    interD14=[reshape(interD14,[1,2500])]
    InterEnergy_D14(n,:)=  interD14 
end

for n=1:50;
   interD15=spinvalueD(n,15).*spinvalueD(:,:)
    interD15=[reshape(interD15,[1,2500])];
    InterEnergy_D15(n,:)=  interD15 
end

for n=1:50;
  interD16=spinvalueD(n,16).*spinvalueD(:,:)
    interD16=[reshape(interD16,[1,2500])]
    InterEnergy_D16(n,:)=  interD16 
end

for n=1:50;
    interD17=spinvalueD(n,17).*spinvalueD(:,:)
    interD17=[reshape(interD17,[1,2500])]
    InterEnergy_D17(n,:)=  interD17 
end

for n=1:50;
   interD18=spinvalueD(n,18).*spinvalueD(:,:)
    interD18=[reshape(interD18,[1,2500])]
    InterEnergy_D18(n,:)=  interD18 
end

for n=1:50;
   interD19=spinvalueD(n,19).*spinvalueD(:,:)
    interD19=[reshape(interD19,[1,2500])]
    InterEnergy_D19(n,:)=  interD19
end

for n=1:50;
    interD20=spinvalueD(n,20).*spinvalueD(:,:)
    interD20=[reshape(interD20,[1,2500])]
    InterEnergy_D20(n,:)=  interD20 
end
for n=1:50;
   
    interD21=spinvalueD(n,21).*spinvalueD(:,:)
    interD21=[reshape(interD21,[1,2500])]
    InterEnergy_D21(n,:)=  interD21 
end
for n=1:50;
   
    interD22=spinvalueD(n,22).*spinvalueD(:,:)
    interD22=[reshape(interD22,[1,2500])]
    InterEnergy_D22(n,:)=  interD22 
end

for n=1:50;
   
    interD23=spinvalueD(n,23).*spinvalueD(:,:)
    interD23=[reshape(interD23,[1,2500])]
    InterEnergy_D23(n,:)=  interD23 
end

for n=1:50;
   
    interD24=spinvalueD(n,24).*spinvalueD(:,:)
    interD24=[reshape(interD24,[1,2500])]
    InterEnergy_D24(n,:)=  interD24 
end

for n=1:50;
    interD25=spinvalueD(n,25).*spinvalueD(:,:)
    interD25=[reshape(interD25,[1,2500])]
    InterEnergy_D25(n,:)=  interD25 
end

for n=1:50;
    interD26=spinvalueD(n,26).*spinvalueD(:,:)
    interD26=[reshape(interD26,[1,2500])]
    InterEnergy_D26(n,:)=  interD26 
end

for n=1:50;
    interD27=spinvalueD(n,27).*spinvalueD(:,:)
    interD27=[reshape(interD27,[1,2500])]
    InterEnergy_D27(n,:)=  interD27 
end

for n=1:50;
    interD28=spinvalueD(n,28).*spinvalueD(:,:)
    interD28=[reshape(interD28,[1,2500])]
    InterEnergy_D28(n,:)=  interD28
end

for n=1:50;
    interD29=spinvalueD(n,29).*spinvalueD(:,:)
    interD29=[reshape(interD29,[1,2500])]
    InterEnergy_D29(n,:)=  interD29 
end

for n=1:50;
   interD30=spinvalueD(n,30).*spinvalueD(:,:)
    interD30=[reshape(interD30,[1,2500])]
    InterEnergy_D30(n,:)=  interD30 
end
for n=1:50;
    interD31=spinvalueD(n,31).*spinvalueD(:,:)
    interD31=[reshape(interD31,[1,2500])]
    InterEnergy_D31(n,:)=  interD31
end

for n=1:50;
  interD32=spinvalueD(n,32).*spinvalueD(:,:)
    interD32=[reshape(interD32,[1,2500])]
    InterEnergy_D32(n,:)=  interD32
end

for n=1:50;
   interD33=spinvalueD(n,33).*spinvalueD(:,:)
    interD33=[reshape(interD33,[1,2500])]
    InterEnergy_D33(n,:)=  interD33
end

for n=1:50;
  interD34=spinvalueD(n,34).*spinvalueD(:,:)
    interD34=[reshape(interD34,[1,2500])]
    InterEnergy_D34(n,:)=  interD34 
end

for n=1:50;
   interD35=spinvalueD(n,35).*spinvalueD(:,:)
    interD35=[reshape(interD35,[1,2500])]
    InterEnergy_D35(n,:)=  interD35 
end

for n=1:50;
  interD36=spinvalueD(n,36).*spinvalueD(:,:)
    interD36=[reshape(interD36,[1,2500])]
    InterEnergy_D36(n,:)=  interD36 
end

for n=1:50;
    interD37=spinvalueD(n,37).*spinvalueD(:,:)
    interD37=[reshape(interD37,[1,2500])]
    InterEnergy_D37(n,:)=  interD37 
end

for n=1:50;
   interD38=spinvalueD(n,38).*spinvalueD(:,:)
    interD38=[reshape(interD38,[1,2500])]
    InterEnergy_D38(n,:)=  interD38 
end

for n=1:50;
   interD39=spinvalueD(n,39).*spinvalueD(:,:)
    interD39=[reshape(interD39,[1,2500])]
    InterEnergy_D39(n,:)=  interD39
end
for n=1:50;
    interD40=spinvalueD(n,40).*spinvalueD(:,:)
    interD40=[reshape(interD40,[1,2500])]
    InterEnergy_D40(n,:)=  interD40 
end


for n=1:50;
    interD41=spinvalueD(n,41).*spinvalueD(:,:)
    interD41=[reshape(interD41,[1,2500])]
    InterEnergy_D41(n,:)=  interD41
end

for n=1:50;
  interD42=spinvalueD(n,42).*spinvalueD(:,:)
    interD42=[reshape(interD42,[1,2500])]
    InterEnergy_D42(n,:)=  interD42
end

for n=1:50;
   interD43=spinvalueD(n,43).*spinvalueD(:,:)
    interD43=[reshape(interD43,[1,2500])]
    InterEnergy_D43(n,:)=  interD43
end

for n=1:50;
  interD44=spinvalueD(n,44).*spinvalueD(:,:)
    interD44=[reshape(interD44,[1,2500])]
    InterEnergy_D44(n,:)=  interD44 
end

for n=1:50;
   interD45=spinvalueD(n,45).*spinvalueD(:,:)
    interD45=[reshape(interD45,[1,2500])]
    InterEnergy_D45(n,:)=  interD45 
end

for n=1:50;
  interD46=spinvalueD(n,46).*spinvalueD(:,:)
    interD46=[reshape(interD46,[1,2500])]
    InterEnergy_D46(n,:)=  interD46 
end

for n=1:50;
    interD47=spinvalueD(n,47).*spinvalueD(:,:)
    interD47=[reshape(interD47,[1,2500])]
    InterEnergy_D47(n,:)=  interD47 
end

for n=1:50;
   interD48=spinvalueD(n,48).*spinvalueD(:,:)
    interD48=[reshape(interD48,[1,2500])]
    InterEnergy_D48(n,:)=  interD48 
end

for n=1:50;
   interD49=spinvalueD(n,49).*spinvalueD(:,:)
    interD49=[reshape(interD49,[1,2500])]
    InterEnergy_D49(n,:)=  interD49
end

for n=1:50;
    interD50=spinvalueD(n,50).*spinvalueD(:,:)
    interD50=[reshape(interD50,[1,2500])]
    InterEnergy_D50(n,:)=  interD50 
end

InterEnergy_D=[ InterEnergy_D1; InterEnergy_D2; InterEnergy_D3; InterEnergy_D4; InterEnergy_D5; InterEnergy_D6;...
     InterEnergy_D7; InterEnergy_D8; InterEnergy_D9; InterEnergy_D10; InterEnergy_D11; InterEnergy_D12;...
      InterEnergy_D13; InterEnergy_D14; InterEnergy_D15; InterEnergy_D16; InterEnergy_D17; InterEnergy_D18;...
       InterEnergy_D19; InterEnergy_D20 ; InterEnergy_D21; InterEnergy_D22; InterEnergy_D23; InterEnergy_D24; InterEnergy_D25; InterEnergy_D26;...
     InterEnergy_D27; InterEnergy_D28; InterEnergy_D29; InterEnergy_D30; InterEnergy_D31; InterEnergy_D32;...
      InterEnergy_D33; InterEnergy_D34; InterEnergy_D35; InterEnergy_D36; InterEnergy_D37; InterEnergy_D38;...
       InterEnergy_D39; InterEnergy_D40 ; InterEnergy_D41; InterEnergy_D42; InterEnergy_D43; InterEnergy_D44; InterEnergy_D45; InterEnergy_D46;...
     InterEnergy_D47; InterEnergy_D48; InterEnergy_D49; InterEnergy_D50 ];

 InterEnergy_D = InterEnergy_D - diag(diag(InterEnergy_D)) + diag(diagonaling);
 
 spinvalueE(spinvalueE<(level_E*255))=-1;
spinvalueE(spinvalueE>=(level_E*255))=1;
spinvalueEReshape=reshape(spinvalueE,[1,2500]);

for n=1:50;
   
    interE1=spinvalueE(n,1).*spinvalueE(:,:)
    interE1=[reshape(interE1,[1,2500])]
    InterEnergy_E1(n,:)=  interE1 
end
for n=1:50;
   
    interE2=spinvalueE(n,2).*spinvalueE(:,:)
    interE2=[reshape(interE2,[1,2500])]
    InterEnergy_E2(n,:)=  interE2 
end

for n=1:50;
   
    interE3=spinvalueE(n,3).*spinvalueE(:,:)
    interE3=[reshape(interE3,[1,2500])]
    InterEnergy_E3(n,:)=  interE3 
end

for n=1:50;
   
    interE4=spinvalueE(n,4).*spinvalueE(:,:)
    interE4=[reshape(interE4,[1,2500])]
    InterEnergy_E4(n,:)=  interE4 
end

for n=1:50;
    interE5=spinvalueE(n,5).*spinvalueE(:,:)
    interE5=[reshape(interE5,[1,2500])]
    InterEnergy_E5(n,:)=  interE5 
end

for n=1:50;
    interE6=spinvalueE(n,6).*spinvalueE(:,:)
    interE6=[reshape(interE6,[1,2500])]
    InterEnergy_E6(n,:)=  interE6 
end

for n=1:50;
    interE7=spinvalueE(n,7).*spinvalueE(:,:)
    interE7=[reshape(interE7,[1,2500])]
    InterEnergy_E7(n,:)=  interE7 
end

for n=1:50;
    interE8=spinvalueE(n,8).*spinvalueE(:,:)
    interE8=[reshape(interE8,[1,2500])]
    InterEnergy_E8(n,:)=  interE8
end

for n=1:50;
    interE9=spinvalueE(n,9).*spinvalueE(:,:)
    interE9=[reshape(interE9,[1,2500])]
    InterEnergy_E9(n,:)=  interE9 
end

for n=1:50;
   interE10=spinvalueE(n,10).*spinvalueE(:,:)
    interE10=[reshape(interE10,[1,2500])]
    InterEnergy_E10(n,:)=  interE10 
end

for n=1:50;
    interE11=spinvalueE(n,11).*spinvalueE(:,:)
    interE11=[reshape(interE11,[1,2500])]
    InterEnergy_E11(n,:)=  interE11
end

for n=1:50;
  interE12=spinvalueE(n,12).*spinvalueE(:,:)
    interE12=[reshape(interE12,[1,2500])]
    InterEnergy_E12(n,:)=  interE12
end

for n=1:50;
   interE13=spinvalueE(n,13).*spinvalueE(:,:)
    interE13=[reshape(interE13,[1,2500])]
    InterEnergy_E13(n,:)=  interE13
end

for n=1:50;
  interE14=spinvalueE(n,14).*spinvalueE(:,:)
    interE14=[reshape(interE14,[1,2500])]
    InterEnergy_E14(n,:)=  interE14 
end

for n=1:50;
   interE15=spinvalueE(n,15).*spinvalueE(:,:)
    interE15=[reshape(interE15,[1,2500])]
    InterEnergy_E15(n,:)=  interE15 
end

for n=1:50;
  interE16=spinvalueE(n,16).*spinvalueE(:,:)
    interE16=[reshape(interE16,[1,2500])]
    InterEnergy_E16(n,:)=  interE16 
end

for n=1:50;
    interE17=spinvalueE(n,17).*spinvalueE(:,:)
    interE17=[reshape(interE17,[1,2500])]
    InterEnergy_E17(n,:)=  interE17 
end

for n=1:50;
   interE18=spinvalueE(n,18).*spinvalueE(:,:)
    interE18=[reshape(interE18,[1,2500])]
    InterEnergy_E18(n,:)=  interE18 
end

for n=1:50;
   interE19=spinvalueE(n,19).*spinvalueE(:,:)
    interE19=[reshape(interE19,[1,2500])]
    InterEnergy_E19(n,:)=  interE19
end

for n=1:50;
    interE20=spinvalueE(n,20).*spinvalueE(:,:)
    interE20=[reshape(interE20,[1,2500])]
    InterEnergy_E20(n,:)=  interE20 
end
for n=1:50;
   
    interE21=spinvalueE(n,21).*spinvalueE(:,:)
    interE21=[reshape(interE21,[1,2500])]
    InterEnergy_E21(n,:)=  interE21 
end
for n=1:50;
   
    interE22=spinvalueE(n,22).*spinvalueE(:,:)
    interE22=[reshape(interE22,[1,2500])]
    InterEnergy_E22(n,:)=  interE22 
end

for n=1:50;
   
    interE23=spinvalueE(n,23).*spinvalueE(:,:)
    interE23=[reshape(interE23,[1,2500])]
    InterEnergy_E23(n,:)=  interE23 
end

for n=1:50;
   
    interE24=spinvalueE(n,24).*spinvalueE(:,:)
    interE24=[reshape(interE24,[1,2500])]
    InterEnergy_E24(n,:)=  interE24 
end

for n=1:50;
    interE25=spinvalueE(n,25).*spinvalueE(:,:)
    interE25=[reshape(interE25,[1,2500])]
    InterEnergy_E25(n,:)=  interE25 
end

for n=1:50;
    interE26=spinvalueE(n,26).*spinvalueE(:,:)
    interE26=[reshape(interE26,[1,2500])]
    InterEnergy_E26(n,:)=  interE26 
end

for n=1:50;
    interE27=spinvalueE(n,27).*spinvalueE(:,:)
    interE27=[reshape(interE27,[1,2500])]
    InterEnergy_E27(n,:)=  interE27 
end

for n=1:50;
    interE28=spinvalueE(n,28).*spinvalueE(:,:)
    interE28=[reshape(interE28,[1,2500])]
    InterEnergy_E28(n,:)=  interE28
end

for n=1:50;
    interE29=spinvalueE(n,29).*spinvalueE(:,:)
    interE29=[reshape(interE29,[1,2500])]
    InterEnergy_E29(n,:)=  interE29 
end

for n=1:50;
   interE30=spinvalueE(n,30).*spinvalueE(:,:)
    interE30=[reshape(interE30,[1,2500])]
    InterEnergy_E30(n,:)=  interE30 
end
for n=1:50;
    interE31=spinvalueE(n,31).*spinvalueE(:,:)
    interE31=[reshape(interE31,[1,2500])]
    InterEnergy_E31(n,:)=  interE31
end

for n=1:50;
  interE32=spinvalueE(n,32).*spinvalueE(:,:)
    interE32=[reshape(interE32,[1,2500])]
    InterEnergy_E32(n,:)=  interE32
end

for n=1:50;
   interE33=spinvalueE(n,33).*spinvalueE(:,:)
    interE33=[reshape(interE33,[1,2500])]
    InterEnergy_E33(n,:)=  interE33
end

for n=1:50;
  interE34=spinvalueE(n,34).*spinvalueE(:,:)
    interE34=[reshape(interE34,[1,2500])]
    InterEnergy_E34(n,:)=  interE34 
end

for n=1:50;
   interE35=spinvalueE(n,35).*spinvalueE(:,:)
    interE35=[reshape(interE35,[1,2500])]
    InterEnergy_E35(n,:)=  interE35 
end

for n=1:50;
  interE36=spinvalueE(n,36).*spinvalueE(:,:)
    interE36=[reshape(interE36,[1,2500])]
    InterEnergy_E36(n,:)=  interE36 
end

for n=1:50;
    interE37=spinvalueE(n,37).*spinvalueE(:,:)
    interE37=[reshape(interE37,[1,2500])]
    InterEnergy_E37(n,:)=  interE37 
end

for n=1:50;
   interE38=spinvalueE(n,38).*spinvalueE(:,:)
    interE38=[reshape(interE38,[1,2500])]
    InterEnergy_E38(n,:)=  interE38 
end

for n=1:50;
   interE39=spinvalueE(n,39).*spinvalueE(:,:)
    interE39=[reshape(interE39,[1,2500])]
    InterEnergy_E39(n,:)=  interE39
end
for n=1:50;
    interE40=spinvalueE(n,40).*spinvalueE(:,:)
    interE40=[reshape(interE40,[1,2500])]
    InterEnergy_E40(n,:)=  interE40 
end


for n=1:50;
    interE41=spinvalueE(n,41).*spinvalueE(:,:)
    interE41=[reshape(interE41,[1,2500])]
    InterEnergy_E41(n,:)=  interE41
end

for n=1:50;
  interE42=spinvalueE(n,42).*spinvalueE(:,:)
    interE42=[reshape(interE42,[1,2500])]
    InterEnergy_E42(n,:)=  interE42
end

for n=1:50;
   interE43=spinvalueE(n,43).*spinvalueE(:,:)
    interE43=[reshape(interE43,[1,2500])]
    InterEnergy_E43(n,:)=  interE43
end

for n=1:50;
  interE44=spinvalueE(n,44).*spinvalueE(:,:)
    interE44=[reshape(interE44,[1,2500])]
    InterEnergy_E44(n,:)=  interE44 
end

for n=1:50;
   interE45=spinvalueE(n,45).*spinvalueE(:,:)
    interE45=[reshape(interE45,[1,2500])]
    InterEnergy_E45(n,:)=  interE45 
end

for n=1:50;
  interE46=spinvalueE(n,46).*spinvalueE(:,:)
    interE46=[reshape(interE46,[1,2500])]
    InterEnergy_E46(n,:)=  interE46 
end

for n=1:50;
    interE47=spinvalueE(n,47).*spinvalueE(:,:)
    interE47=[reshape(interE47,[1,2500])]
    InterEnergy_E47(n,:)=  interE47 
end

for n=1:50;
   interE48=spinvalueE(n,48).*spinvalueE(:,:)
    interE48=[reshape(interE48,[1,2500])]
    InterEnergy_E48(n,:)=  interE48 
end

for n=1:50;
   interE49=spinvalueE(n,49).*spinvalueE(:,:)
    interE49=[reshape(interE49,[1,2500])]
    InterEnergy_E49(n,:)=  interE49
end

for n=1:50;
    interE50=spinvalueE(n,50).*spinvalueE(:,:)
    interE50=[reshape(interE50,[1,2500])]
    InterEnergy_E50(n,:)=  interE50 
end

InterEnergy_E=[ InterEnergy_E1; InterEnergy_E2; InterEnergy_E3; InterEnergy_E4; InterEnergy_E5; InterEnergy_E6;...
     InterEnergy_E7; InterEnergy_E8; InterEnergy_E9; InterEnergy_E10; InterEnergy_E11; InterEnergy_E12;...
      InterEnergy_E13; InterEnergy_E14; InterEnergy_E15; InterEnergy_E16; InterEnergy_E17; InterEnergy_E18;...
       InterEnergy_E19; InterEnergy_E20 ; InterEnergy_E21; InterEnergy_E22; InterEnergy_E23; InterEnergy_E24; InterEnergy_E25; InterEnergy_E26;...
     InterEnergy_E27; InterEnergy_E28; InterEnergy_E29; InterEnergy_E30; InterEnergy_E31; InterEnergy_E32;...
      InterEnergy_E33; InterEnergy_E34; InterEnergy_E35; InterEnergy_E36; InterEnergy_E37; InterEnergy_E38;...
       InterEnergy_E39; InterEnergy_E40 ; InterEnergy_E41; InterEnergy_E42; InterEnergy_E43; InterEnergy_E44; InterEnergy_E45; InterEnergy_E46;...
     InterEnergy_E47; InterEnergy_E48; InterEnergy_E49; InterEnergy_E50 ];

 InterEnergy_E = InterEnergy_E - diag(diag(InterEnergy_E)) + diag(diagonaling);
 
 spinvalueF(spinvalueF<(level_F*255))=-1;
spinvalueF(spinvalueF>=(level_F*255))=1;
spinvalueFReshape=reshape(spinvalueF,[1,2500]);

for n=1:50;
   
    interF1=spinvalueF(n,1).*spinvalueF(:,:)
    interF1=[reshape(interF1,[1,2500])]
    interEnergy_F1(n,:)=  interF1 
end
for n=1:50;
   
    interF2=spinvalueF(n,2).*spinvalueF(:,:)
    interF2=[reshape(interF2,[1,2500])]
    interEnergy_F2(n,:)=  interF2 
end

for n=1:50;
   
    interF3=spinvalueF(n,3).*spinvalueF(:,:)
    interF3=[reshape(interF3,[1,2500])]
    interEnergy_F3(n,:)=  interF3 
end

for n=1:50;
   
    interF4=spinvalueF(n,4).*spinvalueF(:,:)
    interF4=[reshape(interF4,[1,2500])]
    interEnergy_F4(n,:)=  interF4 
end

for n=1:50;
    interF5=spinvalueF(n,5).*spinvalueF(:,:)
    interF5=[reshape(interF5,[1,2500])]
    interEnergy_F5(n,:)=  interF5 
end

for n=1:50;
    interF6=spinvalueF(n,6).*spinvalueF(:,:)
    interF6=[reshape(interF6,[1,2500])]
    interEnergy_F6(n,:)=  interF6 
end

for n=1:50;
    interF7=spinvalueF(n,7).*spinvalueF(:,:)
    interF7=[reshape(interF7,[1,2500])]
    interEnergy_F7(n,:)=  interF7 
end

for n=1:50;
    interF8=spinvalueF(n,8).*spinvalueF(:,:)
    interF8=[reshape(interF8,[1,2500])]
    interEnergy_F8(n,:)=  interF8
end

for n=1:50;
    interF9=spinvalueF(n,9).*spinvalueF(:,:)
    interF9=[reshape(interF9,[1,2500])]
    interEnergy_F9(n,:)=  interF9 
end

for n=1:50;
   interF10=spinvalueF(n,10).*spinvalueF(:,:)
    interF10=[reshape(interF10,[1,2500])]
    interEnergy_F10(n,:)=  interF10 
end

for n=1:50;
    interF11=spinvalueF(n,11).*spinvalueF(:,:)
    interF11=[reshape(interF11,[1,2500])]
    interEnergy_F11(n,:)=  interF11
end

for n=1:50;
  interF12=spinvalueF(n,12).*spinvalueF(:,:)
    interF12=[reshape(interF12,[1,2500])]
    interEnergy_F12(n,:)=  interF12
end

for n=1:50;
   interF13=spinvalueF(n,13).*spinvalueF(:,:)
    interF13=[reshape(interF13,[1,2500])]
    interEnergy_F13(n,:)=  interF13
end

for n=1:50;
  interF14=spinvalueF(n,14).*spinvalueF(:,:)
    interF14=[reshape(interF14,[1,2500])]
    interEnergy_F14(n,:)=  interF14 
end

for n=1:50;
   interF15=spinvalueF(n,15).*spinvalueF(:,:)
    interF15=[reshape(interF15,[1,2500])]
    interEnergy_F15(n,:)=  interF15 
end

for n=1:50;
  interF16=spinvalueF(n,16).*spinvalueF(:,:)
    interF16=[reshape(interF16,[1,2500])]
    interEnergy_F16(n,:)=  interF16 
end

for n=1:50;
    interF17=spinvalueF(n,17).*spinvalueF(:,:)
    interF17=[reshape(interF17,[1,2500])]
    interEnergy_F17(n,:)=  interF17 
end

for n=1:50;
   interF18=spinvalueF(n,18).*spinvalueF(:,:)
    interF18=[reshape(interF18,[1,2500])]
    interEnergy_F18(n,:)=  interF18 
end

for n=1:50;
   interF19=spinvalueF(n,19).*spinvalueF(:,:)
    interF19=[reshape(interF19,[1,2500])]
    interEnergy_F19(n,:)=  interF19
end

for n=1:50;
    interF20=spinvalueF(n,20).*spinvalueF(:,:)
    interF20=[reshape(interF20,[1,2500])]
    interEnergy_F20(n,:)=  interF20 
end
for n=1:50;
   
    interF21=spinvalueF(n,21).*spinvalueF(:,:)
    interF21=[reshape(interF21,[1,2500])]
    interEnergy_F21(n,:)=  interF21 
end
for n=1:50;
   
    interF22=spinvalueF(n,22).*spinvalueF(:,:)
    interF22=[reshape(interF22,[1,2500])]
    interEnergy_F22(n,:)=  interF22 
end

for n=1:50;
   
    interF23=spinvalueF(n,23).*spinvalueF(:,:)
    interF23=[reshape(interF23,[1,2500])]
    interEnergy_F23(n,:)=  interF23 
end

for n=1:50;
   
    interF24=spinvalueF(n,24).*spinvalueF(:,:)
    interF24=[reshape(interF24,[1,2500])]
    interEnergy_F24(n,:)=  interF24 
end

for n=1:50;
    interF25=spinvalueF(n,25).*spinvalueF(:,:)
    interF25=[reshape(interF25,[1,2500])]
    interEnergy_F25(n,:)=  interF25 
end

for n=1:50;
    interF26=spinvalueF(n,26).*spinvalueF(:,:)
    interF26=[reshape(interF26,[1,2500])]
    interEnergy_F26(n,:)=  interF26 
end

for n=1:50;
    interF27=spinvalueF(n,27).*spinvalueF(:,:)
    interF27=[reshape(interF27,[1,2500])]
    interEnergy_F27(n,:)=  interF27 
end

for n=1:50;
    interF28=spinvalueF(n,28).*spinvalueF(:,:)
    interF28=[reshape(interF28,[1,2500])]
    interEnergy_F28(n,:)=  interF28
end

for n=1:50;
    interF29=spinvalueF(n,29).*spinvalueF(:,:)
    interF29=[reshape(interF29,[1,2500])]
    interEnergy_F29(n,:)=  interF29 
end

for n=1:50;
   interF30=spinvalueF(n,30).*spinvalueF(:,:)
    interF30=[reshape(interF30,[1,2500])]
    interEnergy_F30(n,:)=  interF30 
end
for n=1:50;
    interF31=spinvalueF(n,31).*spinvalueF(:,:)
    interF31=[reshape(interF31,[1,2500])]
    interEnergy_F31(n,:)=  interF31
end

for n=1:50;
  interF32=spinvalueF(n,32).*spinvalueF(:,:)
    interF32=[reshape(interF32,[1,2500])]
    interEnergy_F32(n,:)=  interF32
end

for n=1:50;
   interF33=spinvalueF(n,33).*spinvalueF(:,:)
    interF33=[reshape(interF33,[1,2500])]
    interEnergy_F33(n,:)=  interF33
end

for n=1:50;
  interF34=spinvalueF(n,34).*spinvalueF(:,:)
    interF34=[reshape(interF34,[1,2500])]
    interEnergy_F34(n,:)=  interF34 
end

for n=1:50;
   interF35=spinvalueF(n,35).*spinvalueF(:,:)
    interF35=[reshape(interF35,[1,2500])]
    interEnergy_F35(n,:)=  interF35 
end

for n=1:50;
  interF36=spinvalueF(n,36).*spinvalueF(:,:)
    interF36=[reshape(interF36,[1,2500])]
    interEnergy_F36(n,:)=  interF36 
end

for n=1:50;
    interF37=spinvalueF(n,37).*spinvalueF(:,:)
    interF37=[reshape(interF37,[1,2500])]
    interEnergy_F37(n,:)=  interF37 
end

for n=1:50;
   interF38=spinvalueF(n,38).*spinvalueF(:,:)
    interF38=[reshape(interF38,[1,2500])]
    interEnergy_F38(n,:)=  interF38 
end

for n=1:50;
   interF39=spinvalueF(n,39).*spinvalueF(:,:)
    interF39=[reshape(interF39,[1,2500])]
    interEnergy_F39(n,:)=  interF39
end
for n=1:50;
    interF40=spinvalueF(n,40).*spinvalueF(:,:)
    interF40=[reshape(interF40,[1,2500])]
    interEnergy_F40(n,:)=  interF40 
end


for n=1:50;
    interF41=spinvalueF(n,41).*spinvalueF(:,:)
    interF41=[reshape(interF41,[1,2500])]
    interEnergy_F41(n,:)=  interF41
end

for n=1:50;
  interF42=spinvalueF(n,42).*spinvalueF(:,:)
    interF42=[reshape(interF42,[1,2500])]
    interEnergy_F42(n,:)=  interF42
end

for n=1:50;
   interF43=spinvalueF(n,43).*spinvalueF(:,:)
    interF43=[reshape(interF43,[1,2500])]
    interEnergy_F43(n,:)=  interF43
end

for n=1:50;
  interF44=spinvalueF(n,44).*spinvalueF(:,:)
    interF44=[reshape(interF44,[1,2500])]
    interEnergy_F44(n,:)=  interF44 
end

for n=1:50;
   interF45=spinvalueF(n,45).*spinvalueF(:,:)
    interF45=[reshape(interF45,[1,2500])]
    interEnergy_F45(n,:)=  interF45 
end

for n=1:50;
  interF46=spinvalueF(n,46).*spinvalueF(:,:)
    interF46=[reshape(interF46,[1,2500])]
    interEnergy_F46(n,:)=  interF46 
end

for n=1:50;
    interF47=spinvalueF(n,47).*spinvalueF(:,:)
    interF47=[reshape(interF47,[1,2500])]
    interEnergy_F47(n,:)=  interF47 
end

for n=1:50;
   interF48=spinvalueF(n,48).*spinvalueF(:,:)
    interF48=[reshape(interF48,[1,2500])]
    interEnergy_F48(n,:)=  interF48 
end

for n=1:50;
   interF49=spinvalueF(n,49).*spinvalueF(:,:)
    interF49=[reshape(interF49,[1,2500])]
    interEnergy_F49(n,:)=  interF49
end

for n=1:50;
    interF50=spinvalueF(n,50).*spinvalueF(:,:)
    interF50=[reshape(interF50,[1,2500])]
    interEnergy_F50(n,:)=  interF50 
end

interEnergy_F=[ interEnergy_F1; interEnergy_F2; interEnergy_F3; interEnergy_F4; interEnergy_F5; interEnergy_F6;...
     interEnergy_F7; interEnergy_F8; interEnergy_F9; interEnergy_F10; interEnergy_F11; interEnergy_F12;...
      interEnergy_F13; interEnergy_F14; interEnergy_F15; interEnergy_F16; interEnergy_F17; interEnergy_F18;...
       interEnergy_F19; interEnergy_F20 ; interEnergy_F21; interEnergy_F22; interEnergy_F23; interEnergy_F24; interEnergy_F25; interEnergy_F26;...
     interEnergy_F27; interEnergy_F28; interEnergy_F29; interEnergy_F30; interEnergy_F31; interEnergy_F32;...
      interEnergy_F33; interEnergy_F34; interEnergy_F35; interEnergy_F36; interEnergy_F37; interEnergy_F38;...
       interEnergy_F39; interEnergy_F40 ; interEnergy_F41; interEnergy_F42; interEnergy_F43; interEnergy_F44; interEnergy_F45; interEnergy_F46;...
     interEnergy_F47; interEnergy_F48; interEnergy_F49; interEnergy_F50 ];

 interEnergy_F = interEnergy_F - diag(diag(interEnergy_F)) + diag(diagonaling);
   
 spinvalueG(spinvalueG<(level_G*255))=-1;
spinvalueG(spinvalueG>=(level_G*255))=1;
spinvalueGReshape=reshape(spinvalueG,[1,2500]);

for n=1:50;
   
    interG1=spinvalueG(n,1).*spinvalueG(:,:)
    interG1=[reshape(interG1,[1,2500])]
    interEnergy_G1(n,:)=  interG1 
end
for n=1:50;
   
    interG2=spinvalueG(n,2).*spinvalueG(:,:)
    interG2=[reshape(interG2,[1,2500])]
    interEnergy_G2(n,:)=  interG2 
end

for n=1:50;
   
    interG3=spinvalueG(n,3).*spinvalueG(:,:)
    interG3=[reshape(interG3,[1,2500])]
    interEnergy_G3(n,:)=  interG3 
end

for n=1:50;
   
    interG4=spinvalueG(n,4).*spinvalueG(:,:)
    interG4=[reshape(interG4,[1,2500])]
    interEnergy_G4(n,:)=  interG4 
end

for n=1:50;
    interG5=spinvalueG(n,5).*spinvalueG(:,:)
    interG5=[reshape(interG5,[1,2500])]
    interEnergy_G5(n,:)=  interG5 
end

for n=1:50;
    interG6=spinvalueG(n,6).*spinvalueG(:,:)
    interG6=[reshape(interG6,[1,2500])]
    interEnergy_G6(n,:)=  interG6 
end

for n=1:50;
    interG7=spinvalueG(n,7).*spinvalueG(:,:)
    interG7=[reshape(interG7,[1,2500])]
    interEnergy_G7(n,:)=  interG7 
end

for n=1:50;
    interG8=spinvalueG(n,8).*spinvalueG(:,:)
    interG8=[reshape(interG8,[1,2500])]
    interEnergy_G8(n,:)=  interG8
end

for n=1:50;
    interG9=spinvalueG(n,9).*spinvalueG(:,:)
    interG9=[reshape(interG9,[1,2500])]
    interEnergy_G9(n,:)=  interG9 
end

for n=1:50;
   interG10=spinvalueG(n,10).*spinvalueG(:,:)
    interG10=[reshape(interG10,[1,2500])]
    interEnergy_G10(n,:)=  interG10 
end

for n=1:50;
    interG11=spinvalueG(n,11).*spinvalueG(:,:)
    interG11=[reshape(interG11,[1,2500])]
    interEnergy_G11(n,:)=  interG11
end

for n=1:50;
  interG12=spinvalueG(n,12).*spinvalueG(:,:)
    interG12=[reshape(interG12,[1,2500])]
    interEnergy_G12(n,:)=  interG12
end

for n=1:50;
   interG13=spinvalueG(n,13).*spinvalueG(:,:)
    interG13=[reshape(interG13,[1,2500])]
    interEnergy_G13(n,:)=  interG13
end

for n=1:50;
  interG14=spinvalueG(n,14).*spinvalueG(:,:)
    interG14=[reshape(interG14,[1,2500])]
    interEnergy_G14(n,:)=  interG14 
end

for n=1:50;
   interG15=spinvalueG(n,15).*spinvalueG(:,:)
    interG15=[reshape(interG15,[1,2500])]
    interEnergy_G15(n,:)=  interG15 
end

for n=1:50;
  interG16=spinvalueG(n,16).*spinvalueG(:,:)
    interG16=[reshape(interG16,[1,2500])]
    interEnergy_G16(n,:)=  interG16 
end

for n=1:50;
    interG17=spinvalueG(n,17).*spinvalueG(:,:)
    interG17=[reshape(interG17,[1,2500])]
    interEnergy_G17(n,:)=  interG17 
end

for n=1:50;
   interG18=spinvalueG(n,18).*spinvalueG(:,:)
    interG18=[reshape(interG18,[1,2500])]
    interEnergy_G18(n,:)=  interG18 
end

for n=1:50;
   interG19=spinvalueG(n,19).*spinvalueG(:,:)
    interG19=[reshape(interG19,[1,2500])]
    interEnergy_G19(n,:)=  interG19
end

for n=1:50;
    interG20=spinvalueG(n,20).*spinvalueG(:,:)
    interG20=[reshape(interG20,[1,2500])]
    interEnergy_G20(n,:)=  interG20 
end
for n=1:50;
   
    interG21=spinvalueG(n,21).*spinvalueG(:,:)
    interG21=[reshape(interG21,[1,2500])]
    interEnergy_G21(n,:)=  interG21 
end
for n=1:50;
   
    interG22=spinvalueG(n,22).*spinvalueG(:,:)
    interG22=[reshape(interG22,[1,2500])]
    interEnergy_G22(n,:)=  interG22 
end

for n=1:50;
   
    interG23=spinvalueG(n,23).*spinvalueG(:,:)
    interG23=[reshape(interG23,[1,2500])]
    interEnergy_G23(n,:)=  interG23 
end

for n=1:50;
   
    interG24=spinvalueG(n,24).*spinvalueG(:,:)
    interG24=[reshape(interG24,[1,2500])]
    interEnergy_G24(n,:)=  interG24 
end

for n=1:50;
    interG25=spinvalueG(n,25).*spinvalueG(:,:)
    interG25=[reshape(interG25,[1,2500])]
    interEnergy_G25(n,:)=  interG25 
end

for n=1:50;
    interG26=spinvalueG(n,26).*spinvalueG(:,:)
    interG26=[reshape(interG26,[1,2500])]
    interEnergy_G26(n,:)=  interG26 
end

for n=1:50;
    interG27=spinvalueG(n,27).*spinvalueG(:,:)
    interG27=[reshape(interG27,[1,2500])]
    interEnergy_G27(n,:)=  interG27 
end

for n=1:50;
    interG28=spinvalueG(n,28).*spinvalueG(:,:)
    interG28=[reshape(interG28,[1,2500])]
    interEnergy_G28(n,:)=  interG28
end

for n=1:50;
    interG29=spinvalueG(n,29).*spinvalueG(:,:)
    interG29=[reshape(interG29,[1,2500])]
    interEnergy_G29(n,:)=  interG29 
end

for n=1:50;
   interG30=spinvalueG(n,30).*spinvalueG(:,:)
    interG30=[reshape(interG30,[1,2500])]
    interEnergy_G30(n,:)=  interG30 
end
for n=1:50;
    interG31=spinvalueG(n,31).*spinvalueG(:,:)
    interG31=[reshape(interG31,[1,2500])]
    interEnergy_G31(n,:)=  interG31
end

for n=1:50;
  interG32=spinvalueG(n,32).*spinvalueG(:,:)
    interG32=[reshape(interG32,[1,2500])]
    interEnergy_G32(n,:)=  interG32
end

for n=1:50;
   interG33=spinvalueG(n,33).*spinvalueG(:,:)
    interG33=[reshape(interG33,[1,2500])]
    interEnergy_G33(n,:)=  interG33
end

for n=1:50;
  interG34=spinvalueG(n,34).*spinvalueG(:,:)
    interG34=[reshape(interG34,[1,2500])]
    interEnergy_G34(n,:)=  interG34 
end

for n=1:50;
   interG35=spinvalueG(n,35).*spinvalueG(:,:)
    interG35=[reshape(interG35,[1,2500])]
    interEnergy_G35(n,:)=  interG35 
end

for n=1:50;
  interG36=spinvalueG(n,36).*spinvalueG(:,:)
    interG36=[reshape(interG36,[1,2500])]
    interEnergy_G36(n,:)=  interG36 
end

for n=1:50;
    interG37=spinvalueG(n,37).*spinvalueG(:,:)
    interG37=[reshape(interG37,[1,2500])]
    interEnergy_G37(n,:)=  interG37 
end

for n=1:50;
   interG38=spinvalueG(n,38).*spinvalueG(:,:)
    interG38=[reshape(interG38,[1,2500])]
    interEnergy_G38(n,:)=  interG38 
end

for n=1:50;
   interG39=spinvalueG(n,39).*spinvalueG(:,:)
    interG39=[reshape(interG39,[1,2500])]
    interEnergy_G39(n,:)=  interG39
end
for n=1:50;
    interG40=spinvalueG(n,40).*spinvalueG(:,:)
    interG40=[reshape(interG40,[1,2500])]
    interEnergy_G40(n,:)=  interG40 
end


for n=1:50;
    interG41=spinvalueG(n,41).*spinvalueG(:,:)
    interG41=[reshape(interG41,[1,2500])]
    interEnergy_G41(n,:)=  interG41
end

for n=1:50;
  interG42=spinvalueG(n,42).*spinvalueG(:,:)
    interG42=[reshape(interG42,[1,2500])]
    interEnergy_G42(n,:)=  interG42
end

for n=1:50;
   interG43=spinvalueG(n,43).*spinvalueG(:,:)
    interG43=[reshape(interG43,[1,2500])]
    interEnergy_G43(n,:)=  interG43
end

for n=1:50;
  interG44=spinvalueG(n,44).*spinvalueG(:,:)
    interG44=[reshape(interG44,[1,2500])]
    interEnergy_G44(n,:)=  interG44 
end

for n=1:50;
   interG45=spinvalueG(n,45).*spinvalueG(:,:)
    interG45=[reshape(interG45,[1,2500])]
    interEnergy_G45(n,:)=  interG45 
end

for n=1:50;
  interG46=spinvalueG(n,46).*spinvalueG(:,:)
    interG46=[reshape(interG46,[1,2500])]
    interEnergy_G46(n,:)=  interG46 
end

for n=1:50;
    interG47=spinvalueG(n,47).*spinvalueG(:,:)
    interG47=[reshape(interG47,[1,2500])]
    interEnergy_G47(n,:)=  interG47 
end

for n=1:50;
   interG48=spinvalueG(n,48).*spinvalueG(:,:)
    interG48=[reshape(interG48,[1,2500])]
    interEnergy_G48(n,:)=  interG48 
end

for n=1:50;
   interG49=spinvalueG(n,49).*spinvalueG(:,:)
    interG49=[reshape(interG49,[1,2500])]
    interEnergy_G49(n,:)=  interG49
end

for n=1:50;
    interG50=spinvalueG(n,50).*spinvalueG(:,:)
    interG50=[reshape(interG50,[1,2500])]
    interEnergy_G50(n,:)=  interG50 
end

interEnergy_G=[ interEnergy_G1; interEnergy_G2; interEnergy_G3; interEnergy_G4; interEnergy_G5; interEnergy_G6;...
     interEnergy_G7; interEnergy_G8; interEnergy_G9; interEnergy_G10; interEnergy_G11; interEnergy_G12;...
      interEnergy_G13; interEnergy_G14; interEnergy_G15; interEnergy_G16; interEnergy_G17; interEnergy_G18;...
       interEnergy_G19; interEnergy_G20 ; interEnergy_G21; interEnergy_G22; interEnergy_G23; interEnergy_G24; interEnergy_G25; interEnergy_G26;...
     interEnergy_G27; interEnergy_G28; interEnergy_G29; interEnergy_G30; interEnergy_G31; interEnergy_G32;...
      interEnergy_G33; interEnergy_G34; interEnergy_G35; interEnergy_G36; interEnergy_G37; interEnergy_G38;...
       interEnergy_G39; interEnergy_G40 ; interEnergy_G41; interEnergy_G42; interEnergy_G43; interEnergy_G44; interEnergy_G45; interEnergy_G46;...
     interEnergy_G47; interEnergy_G48; interEnergy_G49; interEnergy_G50 ];

 interEnergy_G = interEnergy_G - diag(diag(interEnergy_G)) + diag(diagonaling);
   
 spinvalueH(spinvalueH<(level_H*255))=-1;
spinvalueH(spinvalueH>=(level_H*255))=1;
spinvalueHReshape=reshape(spinvalueH,[1,2500]);

for n=1:50;
   
    interH1=spinvalueH(n,1).*spinvalueH(:,:)
    interH1=[reshape(interH1,[1,2500])]
    interEnergy_H1(n,:)=  interH1 
end
for n=1:50;
   
    interH2=spinvalueH(n,2).*spinvalueH(:,:)
    interH2=[reshape(interH2,[1,2500])]
    interEnergy_H2(n,:)=  interH2 
end

for n=1:50;
   
    interH3=spinvalueH(n,3).*spinvalueH(:,:)
    interH3=[reshape(interH3,[1,2500])]
    interEnergy_H3(n,:)=  interH3 
end

for n=1:50;
   
    interH4=spinvalueH(n,4).*spinvalueH(:,:)
    interH4=[reshape(interH4,[1,2500])]
    interEnergy_H4(n,:)=  interH4 
end

for n=1:50;
    interH5=spinvalueH(n,5).*spinvalueH(:,:)
    interH5=[reshape(interH5,[1,2500])]
    interEnergy_H5(n,:)=  interH5 
end

for n=1:50;
    interH6=spinvalueH(n,6).*spinvalueH(:,:)
    interH6=[reshape(interH6,[1,2500])]
    interEnergy_H6(n,:)=  interH6 
end

for n=1:50;
    interH7=spinvalueH(n,7).*spinvalueH(:,:)
    interH7=[reshape(interH7,[1,2500])]
    interEnergy_H7(n,:)=  interH7 
end

for n=1:50;
    interH8=spinvalueH(n,8).*spinvalueH(:,:)
    interH8=[reshape(interH8,[1,2500])]
    interEnergy_H8(n,:)=  interH8
end

for n=1:50;
    interH9=spinvalueH(n,9).*spinvalueH(:,:)
    interH9=[reshape(interH9,[1,2500])]
    interEnergy_H9(n,:)=  interH9 
end

for n=1:50;
   interH10=spinvalueH(n,10).*spinvalueH(:,:)
    interH10=[reshape(interH10,[1,2500])]
    interEnergy_H10(n,:)=  interH10 
end

for n=1:50;
    interH11=spinvalueH(n,11).*spinvalueH(:,:)
    interH11=[reshape(interH11,[1,2500])]
    interEnergy_H11(n,:)=  interH11
end

for n=1:50;
  interH12=spinvalueH(n,12).*spinvalueH(:,:)
    interH12=[reshape(interH12,[1,2500])]
    interEnergy_H12(n,:)=  interH12
end

for n=1:50;
   interH13=spinvalueH(n,13).*spinvalueH(:,:)
    interH13=[reshape(interH13,[1,2500])]
    interEnergy_H13(n,:)=  interH13
end

for n=1:50;
  interH14=spinvalueH(n,14).*spinvalueH(:,:)
    interH14=[reshape(interH14,[1,2500])]
    interEnergy_H14(n,:)=  interH14 
end

for n=1:50;
   interH15=spinvalueH(n,15).*spinvalueH(:,:)
    interH15=[reshape(interH15,[1,2500])]
    interEnergy_H15(n,:)=  interH15 
end

for n=1:50;
  interH16=spinvalueH(n,16).*spinvalueH(:,:)
    interH16=[reshape(interH16,[1,2500])]
    interEnergy_H16(n,:)=  interH16 
end

for n=1:50;
    interH17=spinvalueH(n,17).*spinvalueH(:,:)
    interH17=[reshape(interH17,[1,2500])]
    interEnergy_H17(n,:)=  interH17 
end

for n=1:50;
   interH18=spinvalueH(n,18).*spinvalueH(:,:)
    interH18=[reshape(interH18,[1,2500])]
    interEnergy_H18(n,:)=  interH18 
end

for n=1:50;
   interH19=spinvalueH(n,19).*spinvalueH(:,:)
    interH19=[reshape(interH19,[1,2500])]
    interEnergy_H19(n,:)=  interH19
end

for n=1:50;
    interH20=spinvalueH(n,20).*spinvalueH(:,:)
    interH20=[reshape(interH20,[1,2500])]
    interEnergy_H20(n,:)=  interH20 
end
for n=1:50;
   
    interH21=spinvalueH(n,21).*spinvalueH(:,:)
    interH21=[reshape(interH21,[1,2500])]
    interEnergy_H21(n,:)=  interH21 
end
for n=1:50;
   
    interH22=spinvalueH(n,22).*spinvalueH(:,:)
    interH22=[reshape(interH22,[1,2500])]
    interEnergy_H22(n,:)=  interH22 
end

for n=1:50;
   
    interH23=spinvalueH(n,23).*spinvalueH(:,:)
    interH23=[reshape(interH23,[1,2500])]
    interEnergy_H23(n,:)=  interH23 
end

for n=1:50;
   
    interH24=spinvalueH(n,24).*spinvalueH(:,:)
    interH24=[reshape(interH24,[1,2500])]
    interEnergy_H24(n,:)=  interH24 
end

for n=1:50;
    interH25=spinvalueH(n,25).*spinvalueH(:,:)
    interH25=[reshape(interH25,[1,2500])]
    interEnergy_H25(n,:)=  interH25 
end

for n=1:50;
    interH26=spinvalueH(n,26).*spinvalueH(:,:)
    interH26=[reshape(interH26,[1,2500])]
    interEnergy_H26(n,:)=  interH26 
end

for n=1:50;
    interH27=spinvalueH(n,27).*spinvalueH(:,:)
    interH27=[reshape(interH27,[1,2500])]
    interEnergy_H27(n,:)=  interH27 
end

for n=1:50;
    interH28=spinvalueH(n,28).*spinvalueH(:,:)
    interH28=[reshape(interH28,[1,2500])]
    interEnergy_H28(n,:)=  interH28
end

for n=1:50;
    interH29=spinvalueH(n,29).*spinvalueH(:,:)
    interH29=[reshape(interH29,[1,2500])]
    interEnergy_H29(n,:)=  interH29 
end

for n=1:50;
   interH30=spinvalueH(n,30).*spinvalueH(:,:)
    interH30=[reshape(interH30,[1,2500])]
    interEnergy_H30(n,:)=  interH30 
end
for n=1:50;
    interH31=spinvalueH(n,31).*spinvalueH(:,:)
    interH31=[reshape(interH31,[1,2500])]
    interEnergy_H31(n,:)=  interH31
end

for n=1:50;
  interH32=spinvalueH(n,32).*spinvalueH(:,:)
    interH32=[reshape(interH32,[1,2500])]
    interEnergy_H32(n,:)=  interH32
end

for n=1:50;
   interH33=spinvalueH(n,33).*spinvalueH(:,:)
    interH33=[reshape(interH33,[1,2500])]
    interEnergy_H33(n,:)=  interH33
end

for n=1:50;
  interH34=spinvalueH(n,34).*spinvalueH(:,:)
    interH34=[reshape(interH34,[1,2500])]
    interEnergy_H34(n,:)=  interH34 
end

for n=1:50;
   interH35=spinvalueH(n,35).*spinvalueH(:,:)
    interH35=[reshape(interH35,[1,2500])]
    interEnergy_H35(n,:)=  interH35 
end

for n=1:50;
  interH36=spinvalueH(n,36).*spinvalueH(:,:)
    interH36=[reshape(interH36,[1,2500])]
    interEnergy_H36(n,:)=  interH36 
end

for n=1:50;
    interH37=spinvalueH(n,37).*spinvalueH(:,:)
    interH37=[reshape(interH37,[1,2500])]
    interEnergy_H37(n,:)=  interH37 
end

for n=1:50;
   interH38=spinvalueH(n,38).*spinvalueH(:,:)
    interH38=[reshape(interH38,[1,2500])]
    interEnergy_H38(n,:)=  interH38 
end

for n=1:50;
   interH39=spinvalueH(n,39).*spinvalueH(:,:)
    interH39=[reshape(interH39,[1,2500])]
    interEnergy_H39(n,:)=  interH39
end
for n=1:50;
    interH40=spinvalueH(n,40).*spinvalueH(:,:)
    interH40=[reshape(interH40,[1,2500])]
    interEnergy_H40(n,:)=  interH40 
end


for n=1:50;
    interH41=spinvalueH(n,41).*spinvalueH(:,:)
    interH41=[reshape(interH41,[1,2500])]
    interEnergy_H41(n,:)=  interH41
end

for n=1:50;
  interH42=spinvalueH(n,42).*spinvalueH(:,:)
    interH42=[reshape(interH42,[1,2500])]
    interEnergy_H42(n,:)=  interH42
end

for n=1:50;
   interH43=spinvalueH(n,43).*spinvalueH(:,:)
    interH43=[reshape(interH43,[1,2500])]
    interEnergy_H43(n,:)=  interH43
end

for n=1:50;
  interH44=spinvalueH(n,44).*spinvalueH(:,:)
    interH44=[reshape(interH44,[1,2500])]
    interEnergy_H44(n,:)=  interH44 
end

for n=1:50;
   interH45=spinvalueH(n,45).*spinvalueH(:,:)
    interH45=[reshape(interH45,[1,2500])]
    interEnergy_H45(n,:)=  interH45 
end

for n=1:50;
  interH46=spinvalueH(n,46).*spinvalueH(:,:)
    interH46=[reshape(interH46,[1,2500])]
    interEnergy_H46(n,:)=  interH46 
end

for n=1:50;
    interH47=spinvalueH(n,47).*spinvalueH(:,:)
    interH47=[reshape(interH47,[1,2500])]
    interEnergy_H47(n,:)=  interH47 
end

for n=1:50;
   interH48=spinvalueH(n,48).*spinvalueH(:,:)
    interH48=[reshape(interH48,[1,2500])]
    interEnergy_H48(n,:)=  interH48 
end

for n=1:50;
   interH49=spinvalueH(n,49).*spinvalueH(:,:)
    interH49=[reshape(interH49,[1,2500])]
    interEnergy_H49(n,:)=  interH49
end

for n=1:50;
    interH50=spinvalueH(n,50).*spinvalueH(:,:)
    interH50=[reshape(interH50,[1,2500])]
    interEnergy_H50(n,:)=  interH50 
end

interEnergy_H=[ interEnergy_H1; interEnergy_H2; interEnergy_H3; interEnergy_H4; interEnergy_H5; interEnergy_H6;...
     interEnergy_H7; interEnergy_H8; interEnergy_H9; interEnergy_H10; interEnergy_H11; interEnergy_H12;...
      interEnergy_H13; interEnergy_H14; interEnergy_H15; interEnergy_H16; interEnergy_H17; interEnergy_H18;...
       interEnergy_H19; interEnergy_H20 ; interEnergy_H21; interEnergy_H22; interEnergy_H23; interEnergy_H24; interEnergy_H25; interEnergy_H26;...
     interEnergy_H27; interEnergy_H28; interEnergy_H29; interEnergy_H30; interEnergy_H31; interEnergy_H32;...
      interEnergy_H33; interEnergy_H34; interEnergy_H35; interEnergy_H36; interEnergy_H37; interEnergy_H38;...
       interEnergy_H39; interEnergy_H40 ; interEnergy_H41; interEnergy_H42; interEnergy_H43; interEnergy_H44; interEnergy_H45; interEnergy_H46;...
     interEnergy_H47; interEnergy_H48; interEnergy_H49; interEnergy_H50 ];

 interEnergy_H = interEnergy_H - diag(diag(interEnergy_H)) + diag(diagonaling);
 
spinvalueI(spinvalueI<(level_I*255))=-1;
spinvalueI(spinvalueI>=(level_I*255))=1;
spinvalueIReshape=reshape(spinvalueI,[1,2500]);

for n=1:50;
   
    interI1=spinvalueI(n,1).*spinvalueI(:,:)
    interI1=[reshape(interI1,[1,2500])]
    interEnergy_I1(n,:)=  interI1 
end
for n=1:50;
   
    interI2=spinvalueI(n,2).*spinvalueI(:,:)
    interI2=[reshape(interI2,[1,2500])]
    interEnergy_I2(n,:)=  interI2 
end

for n=1:50;
   
    interI3=spinvalueI(n,3).*spinvalueI(:,:)
    interI3=[reshape(interI3,[1,2500])]
    interEnergy_I3(n,:)=  interI3 
end

for n=1:50;
   
    interI4=spinvalueI(n,4).*spinvalueI(:,:)
    interI4=[reshape(interI4,[1,2500])]
    interEnergy_I4(n,:)=  interI4 
end

for n=1:50;
    interI5=spinvalueI(n,5).*spinvalueI(:,:)
    interI5=[reshape(interI5,[1,2500])]
    interEnergy_I5(n,:)=  interI5 
end

for n=1:50;
    interI6=spinvalueI(n,6).*spinvalueI(:,:)
    interI6=[reshape(interI6,[1,2500])]
    interEnergy_I6(n,:)=  interI6 
end

for n=1:50;
    interI7=spinvalueI(n,7).*spinvalueI(:,:)
    interI7=[reshape(interI7,[1,2500])]
    interEnergy_I7(n,:)=  interI7 
end

for n=1:50;
    interI8=spinvalueI(n,8).*spinvalueI(:,:)
    interI8=[reshape(interI8,[1,2500])]
    interEnergy_I8(n,:)=  interI8
end

for n=1:50;
    interI9=spinvalueI(n,9).*spinvalueI(:,:)
    interI9=[reshape(interI9,[1,2500])]
    interEnergy_I9(n,:)=  interI9 
end

for n=1:50;
   interI10=spinvalueI(n,10).*spinvalueI(:,:)
    interI10=[reshape(interI10,[1,2500])]
    interEnergy_I10(n,:)=  interI10 
end

for n=1:50;
    interI11=spinvalueI(n,11).*spinvalueI(:,:)
    interI11=[reshape(interI11,[1,2500])]
    interEnergy_I11(n,:)=  interI11
end

for n=1:50;
  interI12=spinvalueI(n,12).*spinvalueI(:,:)
    interI12=[reshape(interI12,[1,2500])]
    interEnergy_I12(n,:)=  interI12
end

for n=1:50;
   interI13=spinvalueI(n,13).*spinvalueI(:,:)
    interI13=[reshape(interI13,[1,2500])]
    interEnergy_I13(n,:)=  interI13
end

for n=1:50;
  interI14=spinvalueI(n,14).*spinvalueI(:,:)
    interI14=[reshape(interI14,[1,2500])]
    interEnergy_I14(n,:)=  interI14 
end

for n=1:50;
   interI15=spinvalueI(n,15).*spinvalueI(:,:)
    interI15=[reshape(interI15,[1,2500])]
    interEnergy_I15(n,:)=  interI15 
end

for n=1:50;
  interI16=spinvalueI(n,16).*spinvalueI(:,:)
    interI16=[reshape(interI16,[1,2500])]
    interEnergy_I16(n,:)=  interI16 
end

for n=1:50;
    interI17=spinvalueI(n,17).*spinvalueI(:,:)
    interI17=[reshape(interI17,[1,2500])]
    interEnergy_I17(n,:)=  interI17 
end

for n=1:50;
   interI18=spinvalueI(n,18).*spinvalueI(:,:)
    interI18=[reshape(interI18,[1,2500])]
    interEnergy_I18(n,:)=  interI18 
end

for n=1:50;
   interI19=spinvalueI(n,19).*spinvalueI(:,:)
    interI19=[reshape(interI19,[1,2500])]
    interEnergy_I19(n,:)=  interI19
end

for n=1:50;
    interI20=spinvalueI(n,20).*spinvalueI(:,:)
    interI20=[reshape(interI20,[1,2500])]
    interEnergy_I20(n,:)=  interI20 
end
for n=1:50;
   
    interI21=spinvalueI(n,21).*spinvalueI(:,:)
    interI21=[reshape(interI21,[1,2500])]
    interEnergy_I21(n,:)=  interI21 
end
for n=1:50;
   
    interI22=spinvalueI(n,22).*spinvalueI(:,:)
    interI22=[reshape(interI22,[1,2500])]
    interEnergy_I22(n,:)=  interI22 
end

for n=1:50;
   
    interI23=spinvalueI(n,23).*spinvalueI(:,:)
    interI23=[reshape(interI23,[1,2500])]
    interEnergy_I23(n,:)=  interI23 
end

for n=1:50;
   
    interI24=spinvalueI(n,24).*spinvalueI(:,:)
    interI24=[reshape(interI24,[1,2500])]
    interEnergy_I24(n,:)=  interI24 
end

for n=1:50;
    interI25=spinvalueI(n,25).*spinvalueI(:,:)
    interI25=[reshape(interI25,[1,2500])]
    interEnergy_I25(n,:)=  interI25 
end

for n=1:50;
    interI26=spinvalueI(n,26).*spinvalueI(:,:)
    interI26=[reshape(interI26,[1,2500])]
    interEnergy_I26(n,:)=  interI26 
end

for n=1:50;
    interI27=spinvalueI(n,27).*spinvalueI(:,:)
    interI27=[reshape(interI27,[1,2500])]
    interEnergy_I27(n,:)=  interI27 
end

for n=1:50;
    interI28=spinvalueI(n,28).*spinvalueI(:,:)
    interI28=[reshape(interI28,[1,2500])]
    interEnergy_I28(n,:)=  interI28
end

for n=1:50;
    interI29=spinvalueI(n,29).*spinvalueI(:,:)
    interI29=[reshape(interI29,[1,2500])]
    interEnergy_I29(n,:)=  interI29 
end

for n=1:50;
   interI30=spinvalueI(n,30).*spinvalueI(:,:)
    interI30=[reshape(interI30,[1,2500])]
    interEnergy_I30(n,:)=  interI30 
end
for n=1:50;
    interI31=spinvalueI(n,31).*spinvalueI(:,:)
    interI31=[reshape(interI31,[1,2500])]
    interEnergy_I31(n,:)=  interI31
end

for n=1:50;
  interI32=spinvalueI(n,32).*spinvalueI(:,:)
    interI32=[reshape(interI32,[1,2500])]
    interEnergy_I32(n,:)=  interI32
end

for n=1:50;
   interI33=spinvalueI(n,33).*spinvalueI(:,:)
    interI33=[reshape(interI33,[1,2500])]
    interEnergy_I33(n,:)=  interI33
end

for n=1:50;
  interI34=spinvalueI(n,34).*spinvalueI(:,:)
    interI34=[reshape(interI34,[1,2500])]
    interEnergy_I34(n,:)=  interI34 
end

for n=1:50;
   interI35=spinvalueI(n,35).*spinvalueI(:,:)
    interI35=[reshape(interI35,[1,2500])]
    interEnergy_I35(n,:)=  interI35 
end

for n=1:50;
  interI36=spinvalueI(n,36).*spinvalueI(:,:)
    interI36=[reshape(interI36,[1,2500])]
    interEnergy_I36(n,:)=  interI36 
end

for n=1:50;
    interI37=spinvalueI(n,37).*spinvalueI(:,:)
    interI37=[reshape(interI37,[1,2500])]
    interEnergy_I37(n,:)=  interI37 
end

for n=1:50;
   interI38=spinvalueI(n,38).*spinvalueI(:,:)
    interI38=[reshape(interI38,[1,2500])]
    interEnergy_I38(n,:)=  interI38 
end

for n=1:50;
   interI39=spinvalueI(n,39).*spinvalueI(:,:)
    interI39=[reshape(interI39,[1,2500])]
    interEnergy_I39(n,:)=  interI39
end
for n=1:50;
    interI40=spinvalueI(n,40).*spinvalueI(:,:)
    interI40=[reshape(interI40,[1,2500])]
    interEnergy_I40(n,:)=  interI40 
end


for n=1:50;
    interI41=spinvalueI(n,41).*spinvalueI(:,:)
    interI41=[reshape(interI41,[1,2500])]
    interEnergy_I41(n,:)=  interI41
end

for n=1:50;
  interI42=spinvalueI(n,42).*spinvalueI(:,:)
    interI42=[reshape(interI42,[1,2500])]
    interEnergy_I42(n,:)=  interI42
end

for n=1:50;
   interI43=spinvalueI(n,43).*spinvalueI(:,:)
    interI43=[reshape(interI43,[1,2500])]
    interEnergy_I43(n,:)=  interI43
end

for n=1:50;
  interI44=spinvalueI(n,44).*spinvalueI(:,:)
    interI44=[reshape(interI44,[1,2500])]
    interEnergy_I44(n,:)=  interI44 
end

for n=1:50;
   interI45=spinvalueI(n,45).*spinvalueI(:,:)
    interI45=[reshape(interI45,[1,2500])]
    interEnergy_I45(n,:)=  interI45 
end

for n=1:50;
  interI46=spinvalueI(n,46).*spinvalueI(:,:)
    interI46=[reshape(interI46,[1,2500])]
    interEnergy_I46(n,:)=  interI46 
end

for n=1:50;
    interI47=spinvalueI(n,47).*spinvalueI(:,:)
    interI47=[reshape(interI47,[1,2500])]
    interEnergy_I47(n,:)=  interI47 
end

for n=1:50;
   interI48=spinvalueI(n,48).*spinvalueI(:,:)
    interI48=[reshape(interI48,[1,2500])]
    interEnergy_I48(n,:)=  interI48 
end

for n=1:50;
   interI49=spinvalueI(n,49).*spinvalueI(:,:)
    interI49=[reshape(interI49,[1,2500])]
    interEnergy_I49(n,:)=  interI49
end

for n=1:50;
    interI50=spinvalueI(n,50).*spinvalueI(:,:)
    interI50=[reshape(interI50,[1,2500])]
    interEnergy_I50(n,:)=  interI50 
end

interEnergy_I=[ interEnergy_I1; interEnergy_I2; interEnergy_I3; interEnergy_I4; interEnergy_I5; interEnergy_I6;...
     interEnergy_I7; interEnergy_I8; interEnergy_I9; interEnergy_I10; interEnergy_I11; interEnergy_I12;...
      interEnergy_I13; interEnergy_I14; interEnergy_I15; interEnergy_I16; interEnergy_I17; interEnergy_I18;...
       interEnergy_I19; interEnergy_I20 ; interEnergy_I21; interEnergy_I22; interEnergy_I23; interEnergy_I24; interEnergy_I25; interEnergy_I26;...
     interEnergy_I27; interEnergy_I28; interEnergy_I29; interEnergy_I30; interEnergy_I31; interEnergy_I32;...
      interEnergy_I33; interEnergy_I34; interEnergy_I35; interEnergy_I36; interEnergy_I37; interEnergy_I38;...
       interEnergy_I39; interEnergy_I40 ; interEnergy_I41; interEnergy_I42; interEnergy_I43; interEnergy_I44; interEnergy_I45; interEnergy_I46;...
     interEnergy_I47; interEnergy_I48; interEnergy_I49; interEnergy_I50 ];

 interEnergy_I = interEnergy_I - diag(diag(interEnergy_I)) + diag(diagonaling);
 
spinvalueJ(spinvalueJ<(level_J*255))=-1;
spinvalueJ(spinvalueJ>=(level_J*255))=1;
spinvalueJReshape=reshape(spinvalueJ,[1,2500]);

for n=1:50;
   
    interJ1=spinvalueJ(n,1).*spinvalueJ(:,:)
    interJ1=[reshape(interJ1,[1,2500])]
    interEnergy_J1(n,:)=  interJ1 
end
for n=1:50;
   
    interJ2=spinvalueJ(n,2).*spinvalueJ(:,:)
    interJ2=[reshape(interJ2,[1,2500])]
    interEnergy_J2(n,:)=  interJ2 
end

for n=1:50;
   
    interJ3=spinvalueJ(n,3).*spinvalueJ(:,:)
    interJ3=[reshape(interJ3,[1,2500])]
    interEnergy_J3(n,:)=  interJ3 
end

for n=1:50;
   
    interJ4=spinvalueJ(n,4).*spinvalueJ(:,:)
    interJ4=[reshape(interJ4,[1,2500])]
    interEnergy_J4(n,:)=  interJ4 
end

for n=1:50;
    interJ5=spinvalueJ(n,5).*spinvalueJ(:,:)
    interJ5=[reshape(interJ5,[1,2500])]
    interEnergy_J5(n,:)=  interJ5 
end

for n=1:50;
    interJ6=spinvalueJ(n,6).*spinvalueJ(:,:)
    interJ6=[reshape(interJ6,[1,2500])]
    interEnergy_J6(n,:)=  interJ6 
end

for n=1:50;
    interJ7=spinvalueJ(n,7).*spinvalueJ(:,:)
    interJ7=[reshape(interJ7,[1,2500])]
    interEnergy_J7(n,:)=  interJ7 
end

for n=1:50;
    interJ8=spinvalueJ(n,8).*spinvalueJ(:,:)
    interJ8=[reshape(interJ8,[1,2500])]
    interEnergy_J8(n,:)=  interJ8
end

for n=1:50;
    interJ9=spinvalueJ(n,9).*spinvalueJ(:,:)
    interJ9=[reshape(interJ9,[1,2500])]
    interEnergy_J9(n,:)=  interJ9 
end

for n=1:50;
   interJ10=spinvalueJ(n,10).*spinvalueJ(:,:)
    interJ10=[reshape(interJ10,[1,2500])]
    interEnergy_J10(n,:)=  interJ10 
end

for n=1:50;
    interJ11=spinvalueJ(n,11).*spinvalueJ(:,:)
    interJ11=[reshape(interJ11,[1,2500])]
    interEnergy_J11(n,:)=  interJ11
end

for n=1:50;
  interJ12=spinvalueJ(n,12).*spinvalueJ(:,:)
    interJ12=[reshape(interJ12,[1,2500])]
    interEnergy_J12(n,:)=  interJ12
end

for n=1:50;
   interJ13=spinvalueJ(n,13).*spinvalueJ(:,:)
    interJ13=[reshape(interJ13,[1,2500])]
    interEnergy_J13(n,:)=  interJ13
end

for n=1:50;
  interJ14=spinvalueJ(n,14).*spinvalueJ(:,:)
    interJ14=[reshape(interJ14,[1,2500])]
    interEnergy_J14(n,:)=  interJ14 
end

for n=1:50;
   interJ15=spinvalueJ(n,15).*spinvalueJ(:,:)
    interJ15=[reshape(interJ15,[1,2500])]
    interEnergy_J15(n,:)=  interJ15 
end

for n=1:50;
  interJ16=spinvalueJ(n,16).*spinvalueJ(:,:)
    interJ16=[reshape(interJ16,[1,2500])]
    interEnergy_J16(n,:)=  interJ16 
end

for n=1:50;
    interJ17=spinvalueJ(n,17).*spinvalueJ(:,:)
    interJ17=[reshape(interJ17,[1,2500])]
    interEnergy_J17(n,:)=  interJ17 
end

for n=1:50;
   interJ18=spinvalueJ(n,18).*spinvalueJ(:,:)
    interJ18=[reshape(interJ18,[1,2500])]
    interEnergy_J18(n,:)=  interJ18 
end

for n=1:50;
   interJ19=spinvalueJ(n,19).*spinvalueJ(:,:)
    interJ19=[reshape(interJ19,[1,2500])]
    interEnergy_J19(n,:)=  interJ19
end

for n=1:50;
    interJ20=spinvalueJ(n,20).*spinvalueJ(:,:)
    interJ20=[reshape(interJ20,[1,2500])]
    interEnergy_J20(n,:)=  interJ20 
end
for n=1:50;
   
    interJ21=spinvalueJ(n,21).*spinvalueJ(:,:)
    interJ21=[reshape(interJ21,[1,2500])]
    interEnergy_J21(n,:)=  interJ21 
end
for n=1:50;
   
    interJ22=spinvalueJ(n,22).*spinvalueJ(:,:)
    interJ22=[reshape(interJ22,[1,2500])]
    interEnergy_J22(n,:)=  interJ22 
end

for n=1:50;
   
    interJ23=spinvalueJ(n,23).*spinvalueJ(:,:)
    interJ23=[reshape(interJ23,[1,2500])]
    interEnergy_J23(n,:)=  interJ23 
end

for n=1:50;
   
    interJ24=spinvalueJ(n,24).*spinvalueJ(:,:)
    interJ24=[reshape(interJ24,[1,2500])]
    interEnergy_J24(n,:)=  interJ24 
end

for n=1:50;
    interJ25=spinvalueJ(n,25).*spinvalueJ(:,:)
    interJ25=[reshape(interJ25,[1,2500])]
    interEnergy_J25(n,:)=  interJ25 
end

for n=1:50;
    interJ26=spinvalueJ(n,26).*spinvalueJ(:,:)
    interJ26=[reshape(interJ26,[1,2500])]
    interEnergy_J26(n,:)=  interJ26 
end

for n=1:50;
    interJ27=spinvalueJ(n,27).*spinvalueJ(:,:)
    interJ27=[reshape(interJ27,[1,2500])]
    interEnergy_J27(n,:)=  interJ27 
end

for n=1:50;
    interJ28=spinvalueJ(n,28).*spinvalueJ(:,:)
    interJ28=[reshape(interJ28,[1,2500])]
    interEnergy_J28(n,:)=  interJ28
end

for n=1:50;
    interJ29=spinvalueJ(n,29).*spinvalueJ(:,:)
    interJ29=[reshape(interJ29,[1,2500])]
    interEnergy_J29(n,:)=  interJ29 
end

for n=1:50;
   interJ30=spinvalueJ(n,30).*spinvalueJ(:,:)
    interJ30=[reshape(interJ30,[1,2500])]
    interEnergy_J30(n,:)=  interJ30 
end
for n=1:50;
    interJ31=spinvalueJ(n,31).*spinvalueJ(:,:)
    interJ31=[reshape(interJ31,[1,2500])]
    interEnergy_J31(n,:)=  interJ31
end

for n=1:50;
  interJ32=spinvalueJ(n,32).*spinvalueJ(:,:)
    interJ32=[reshape(interJ32,[1,2500])]
    interEnergy_J32(n,:)=  interJ32
end

for n=1:50;
   interJ33=spinvalueJ(n,33).*spinvalueJ(:,:)
    interJ33=[reshape(interJ33,[1,2500])]
    interEnergy_J33(n,:)=  interJ33
end

for n=1:50;
  interJ34=spinvalueJ(n,34).*spinvalueJ(:,:)
    interJ34=[reshape(interJ34,[1,2500])]
    interEnergy_J34(n,:)=  interJ34 
end

for n=1:50;
   interJ35=spinvalueJ(n,35).*spinvalueJ(:,:)
    interJ35=[reshape(interJ35,[1,2500])]
    interEnergy_J35(n,:)=  interJ35 
end

for n=1:50;
  interJ36=spinvalueJ(n,36).*spinvalueJ(:,:)
    interJ36=[reshape(interJ36,[1,2500])]
    interEnergy_J36(n,:)=  interJ36 
end

for n=1:50;
    interJ37=spinvalueJ(n,37).*spinvalueJ(:,:)
    interJ37=[reshape(interJ37,[1,2500])]
    interEnergy_J37(n,:)=  interJ37 
end

for n=1:50;
   interJ38=spinvalueJ(n,38).*spinvalueJ(:,:)
    interJ38=[reshape(interJ38,[1,2500])]
    interEnergy_J38(n,:)=  interJ38 
end

for n=1:50;
   interJ39=spinvalueJ(n,39).*spinvalueJ(:,:)
    interJ39=[reshape(interJ39,[1,2500])]
    interEnergy_J39(n,:)=  interJ39
end
for n=1:50;
    interJ40=spinvalueJ(n,40).*spinvalueJ(:,:)
    interJ40=[reshape(interJ40,[1,2500])]
    interEnergy_J40(n,:)=  interJ40 
end


for n=1:50;
    interJ41=spinvalueJ(n,41).*spinvalueJ(:,:)
    interJ41=[reshape(interJ41,[1,2500])]
    interEnergy_J41(n,:)=  interJ41
end

for n=1:50;
  interJ42=spinvalueJ(n,42).*spinvalueJ(:,:)
    interJ42=[reshape(interJ42,[1,2500])]
    interEnergy_J42(n,:)=  interJ42
end

for n=1:50;
   interJ43=spinvalueJ(n,43).*spinvalueJ(:,:)
    interJ43=[reshape(interJ43,[1,2500])]
    interEnergy_J43(n,:)=  interJ43
end

for n=1:50;
  interJ44=spinvalueJ(n,44).*spinvalueJ(:,:)
    interJ44=[reshape(interJ44,[1,2500])]
    interEnergy_J44(n,:)=  interJ44 
end

for n=1:50;
   interJ45=spinvalueJ(n,45).*spinvalueJ(:,:)
    interJ45=[reshape(interJ45,[1,2500])]
    interEnergy_J45(n,:)=  interJ45 
end

for n=1:50;
  interJ46=spinvalueJ(n,46).*spinvalueJ(:,:)
    interJ46=[reshape(interJ46,[1,2500])]
    interEnergy_J46(n,:)=  interJ46 
end

for n=1:50;
    interJ47=spinvalueJ(n,47).*spinvalueJ(:,:)
    interJ47=[reshape(interJ47,[1,2500])]
    interEnergy_J47(n,:)=  interJ47 
end

for n=1:50;
   interJ48=spinvalueJ(n,48).*spinvalueJ(:,:)
    interJ48=[reshape(interJ48,[1,2500])]
    interEnergy_J48(n,:)=  interJ48 
end

for n=1:50;
   interJ49=spinvalueJ(n,49).*spinvalueJ(:,:)
    interJ49=[reshape(interJ49,[1,2500])]
    interEnergy_J49(n,:)=  interJ49
end

for n=1:50;
    interJ50=spinvalueJ(n,50).*spinvalueJ(:,:)
    interJ50=[reshape(interJ50,[1,2500])]
    interEnergy_J50(n,:)=  interJ50 
end

interEnergy_J=[ interEnergy_J1; interEnergy_J2; interEnergy_J3; interEnergy_J4; interEnergy_J5; interEnergy_J6;...
     interEnergy_J7; interEnergy_J8; interEnergy_J9; interEnergy_J10; interEnergy_J11; interEnergy_J12;...
      interEnergy_J13; interEnergy_J14; interEnergy_J15; interEnergy_J16; interEnergy_J17; interEnergy_J18;...
       interEnergy_J19; interEnergy_J20 ; interEnergy_J21; interEnergy_J22; interEnergy_J23; interEnergy_J24; interEnergy_J25; interEnergy_J26;...
     interEnergy_J27; interEnergy_J28; interEnergy_J29; interEnergy_J30; interEnergy_J31; interEnergy_J32;...
      interEnergy_J33; interEnergy_J34; interEnergy_J35; interEnergy_J36; interEnergy_J37; interEnergy_J38;...
       interEnergy_J39; interEnergy_J40 ; interEnergy_J41; interEnergy_J42; interEnergy_J43; interEnergy_J44; interEnergy_J45; interEnergy_J46;...
     interEnergy_J47; interEnergy_J48; interEnergy_J49; interEnergy_J50 ];

 interEnergy_J = interEnergy_J - diag(diag(interEnergy_J)) + diag(diagonaling);
   

%InterEnergyTot =1/10 *(InterEnergy_A + InterEnergy_B + InterEnergy_C + InterEnergy_D +InterEnergy_E +...
%interEnergy_F + interEnergy_G + interEnergy_H + interEnergy_I + interEnergy_J)

for n=1:2500;
  Energy_A= [InterEnergy_A(n,:).*spinvalueAReshape*spinvalueAReshape(1,n)];
   Energy_A1(n,:)= Energy_A;  
end
   Energy_A1= Energy_A1- diag(diag(Energy_A1)) + diag(spinvalueAReshape(1:end));
Energy_A1= -sum(Energy_A1);
Energy_A1= sum(Energy_A1)

for n=1:2500;
  Energy_B= [InterEnergy_B(n,:).*spinvalueBReshape*spinvalueBReshape(1,n)];
   Energy_B1(n,:)= Energy_B;  
end
   Energy_B1= Energy_B1- diag(diag(Energy_B1)) + diag(spinvalueBReshape(1:end));
Energy_B1= -sum(Energy_B1);
Energy_B1= sum(Energy_B1)

for n=1:2500;
  Energy_C= [InterEnergy_C(n,:).*spinvalueCReshape*spinvalueCReshape(1,n)];
   Energy_C1(n,:)= Energy_C;  
end
   Energy_C1= Energy_C1- diag(diag(Energy_C1)) + diag(spinvalueCReshape(1:end));
Energy_C1= -sum(Energy_C1);
Energy_C1= sum(Energy_C1)

for n=1:2500;
  Energy_D= [InterEnergy_D(n,:).*spinvalueDReshape*spinvalueDReshape(1,n)];
   Energy_D1(n,:)= Energy_D;  
end
   Energy_D1= Energy_D1- diag(diag(Energy_D1)) + diag(spinvalueDReshape(1:end));
Energy_D1= -sum(Energy_D1);
Energy_D1= sum(Energy_D1)
for n=1:2500;
  Energy_E= [InterEnergy_E(n,:).*spinvalueEReshape*spinvalueEReshape(1,n)];
   Energy_E1(n,:)= Energy_E;  
end
   Energy_E1= Energy_E1- diag(diag(Energy_E1)) + diag(spinvalueEReshape(1:end));
Energy_E1= -sum(Energy_E1);
Energy_E1= sum(Energy_E1)
for n=1:2500;
  Energy_F= [interEnergy_F(n,:).*spinvalueFReshape*spinvalueFReshape(1,n)];
   Energy_F1(n,:)= Energy_F;  
end
   Energy_F1= Energy_F1- diag(diag(Energy_F1)) + diag(spinvalueFReshape(1:end));
Energy_F1= -sum(Energy_F1);
Energy_F1= sum(Energy_F1)
for n=1:2500;
  Energy_G= [interEnergy_G(n,:).*spinvalueGReshape*spinvalueGReshape(1,n)];
   Energy_G1(n,:)= Energy_G;  
end
   Energy_G1= Energy_G1- diag(diag(Energy_G1)) + diag(spinvalueGReshape(1:end));
Energy_G1= -sum(Energy_G1);
Energy_G1= sum(Energy_G1)
for n=1:2500;
  Energy_H= [interEnergy_H(n,:).*spinvalueHReshape*spinvalueHReshape(1,n)];
   Energy_H1(n,:)= Energy_H;  
end
   Energy_H1= Energy_H1- diag(diag(Energy_H1)) + diag(spinvalueHReshape(1:end));
Energy_H1= -sum(Energy_H1);
Energy_H1= sum(Energy_H1)
for n=1:2500;
  Energy_I= [interEnergy_I(n,:).*spinvalueIReshape*spinvalueIReshape(1,n)];
   Energy_I1(n,:)= Energy_I;  
end
   Energy_I1= Energy_I1- diag(diag(Energy_I1)) + diag(spinvalueIReshape(1:end));
Energy_I1= -sum(Energy_I1);
Energy_I1= sum(Energy_I1)
for n=1:2500;
  Energy_J= [interEnergy_J(n,:).*spinvalueJReshape*spinvalueJReshape(1,n)];
   Energy_J1(n,:)= Energy_J;  
end
   Energy_J1= Energy_J1- diag(diag(Energy_J1)) + diag(spinvalueJReshape(1:end));
Energy_J1= -sum(Energy_J1);
Energy_J1= sum(Energy_J1)



%imshow(imageresizeA)
%figure
%imshow(imageresizeB)
%figure
%imshow(imageresizeC)
%figure
%imshow(imageresizeD)
%figure
%imshow(imageresizeE)
%figure
%imshow(imageresizeF)
%figure
%imshow(imageresizeG)
%figure
%imshow(imageresizeH)
%figure
%imshow(imageresizeI)
%figure
%imshow(imageresizeJ)
 %myimage = 'C:\images'
 %datastore(myfolder, 'Type', 'image')
 %A= read(myimage)
% imshow(imageresizeD)
%imshow(A)
%Image_folder =imageDatastore('Image*.png')

%nfiles = size(imageresizeF)
%imshow(J)
%Images= imread ('Image0.png')


