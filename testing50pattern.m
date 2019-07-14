clc
vi= spinvalueH;
idx = randperm(numel(vi),250);
vi(idx) = -vi(idx);
b=vi;
vi=reshape(vi,[1,2500]);
diagonaling=reshape(zeros(50),[1,2500]);

for n=1:2500;
  ki= [InterEnergyTot(n,:).*vi*vi(1,n)];
    ki_W(n,:)= ki;  
end
   ki_W = ki_W - diag(diag(ki_W)) + diag(diagonaling(1:end));
ki_Energy= -sum(ki_W);
Energy_WRpattern= sum(ki_Energy);

for mi=1:2500
 vi(mi)=-vi(mi);
for n=1:2500;
  ki= [InterEnergyTot(n,:).*vi*vi(1,n)];
    ki_T(n,:)= ki;  
end
   ki_T = ki_T - diag(diag(ki_T)) + diag(diagonaling(1:end));
ki_Energy= sum(ki_T);
Energy_Tpattern= -sum(ki_Energy);
 if Energy_Tpattern >= Energy_WRpattern
     vi(mi)=-vi(mi);
     mi=mi+1;

 elseif Energy_Tpattern < Energy_WRpattern
     vi(mi)=vi(mi);
     mi=mi+1;
    Energy_WRpattern = Energy_Tpattern
 end
end
vi= reshape(vi,[50,50])
figure 
imshow(vi)
figure 
imshow( b)