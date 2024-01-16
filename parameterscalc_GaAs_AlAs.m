function [fitnessfunction]=parameterscalc_GaAs_AlAs(xx)

sum_penalty=0;

Esa_GaAs=xx(1);
Esc_GaAs=xx(2);
Essa_GaAs=xx(3);
Essc_GaAs=xx(4);
Exayc_GaAs=xx(5);
Esaxc_GaAs=xx(6);
Exasc_GaAs=xx(7);
Essaxc_GaAs=xx(8);
Exassc_GaAs=xx(9);

Esa_AlAs=xx(10);
Esc_AlAs=xx(11);
Essa_AlAs=xx(12);
Essc_AlAs=xx(13);
Exayc_AlAs=xx(14);
Esaxc_AlAs=xx(15);
Exasc_AlAs=xx(16);
Essaxc_AlAs=xx(17);
Exassc_AlAs=xx(18);

[FitnessFunction_GaAs,Epa_GaAs,Epc_GaAs,Exaxc_GaAs,Esasc_GaAs]=parameters_calculate_GaAs(Esa_GaAs,Esc_GaAs,Essa_GaAs,Essc_GaAs,Exayc_GaAs,Esaxc_GaAs,Exasc_GaAs,Essaxc_GaAs,Exassc_GaAs);

[FitnessFunction_AlAs,Epa_AlAs,Epc_AlAs,Exaxc_AlAs,Esasc_AlAs]=parameters_calculate_AlAs(Esa_AlAs,Esc_AlAs,Essa_AlAs,Essc_AlAs,Exayc_AlAs,Esaxc_AlAs,Exasc_AlAs,Essaxc_AlAs,Exassc_AlAs);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Substrate material
inputss(1,1)=3;

%direction of substrate
inputss(1,2)=2;
%matter 1
inputss(2,1)=3;
inputss(2,2)=0;
inputss(2,3)=0;
%interface1
inputss(3,1)=3;
inputss(3,2)=0;
inputss(3,3)=0;
%matter 2
inputss(4,1)=4;
inputss(4,2)=0;
inputss(4,3)=0;
%interface 2
inputss(5,1)=4;
inputss(5,2)=0;
inputss(5,3)=0;
%%%%%%%%%%%%%%%%
    
 
     %     a        D001      D110       D111       delta0    Ev        Esa         Esc         Epa          Epc          Essa         Essc         Esasc         Esaxc        Exasc         Essaxc        Exassc        Exaxc         Exayc        deltaa       deltac
      ct=[5.43     0.776      0.515      0.444      0.04      -7.03      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.65     0.751      0.450      0.371      0.30      -6.35      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.6532   0.9036     0.5539     0.4638     0.34      -6.92      Esa_GaAs   Esc_GaAs    Epa_GaAs     Epc_GaAs     Essa_GaAs    Essc_GaAs    Esasc_GaAs    Esaxc_GaAs   Exasc_GaAs    Essaxc_GaAs   Exassc_GaAs   Exaxc_GaAs    Exayc_GaAs   0.421        0.174 
          5.66139  0.9589     0.6067     0.5159     0.3       -7.49      Esa_AlAs   Esc_AlAs    Epa_AlAs     Epc_AlAs     Essa_AlAs    Essc_AlAs    Esasc_AlAs    Esaxc_AlAs   Exasc_AlAs    Essaxc_AlAs   Exassc_AlAs   Exaxc_AlAs    Exayc_AlAs   0.421        0.024
          6.0583   1.0868     0.6734     0.5698     0.38      -6.67      -9.2448    -3.6333     1.3697       2.8394       6.8602       6.0756       -6.1866       4.9419       6.7975        3.1176        5.1385        2.1066        5.2173       0.420        0.300
          5.4509   0.8830     0.5418     0.4539     0.08      -7.40      -2.71223555982859      -7.41719996661102    0.597109034267913      4.51504481188593      14.8843959942226     9.91835174597312      -7.48367718887606      4.49617016641386      11.9761472232676      8.22414285334778    3.21678502195798      1.68307388590674       4.77300874487524     0.067        0.174
          5.4635   0.8560     0.6552     0.5976     0.04      -8.09      -0.004144639223956     -9.76180067735932    3.22409302325581       1.89980821131208      14.9779832548792     6.73981952243394      -6.96402047584693      6.3441458132586       7.9219765049133       4.47282656506714    4.40426894348301      2.48868617156136       4.90223146621128     0.067        0.024
          5.8690   1.1213     0.7491     0.6524     0.11      -7.04      -7.91404   -2.76662    0.08442      4.75968      9.88869      7.66966      -6.16976      3.62283      6.90390       4.61375       6.18932       0.75617       4.23370      0.09400      0.54000
          6.09593  0.9108     0.571      0.483      0.82      -6.25      -5.7211    -3.7936     0.093277     2.9226       7.5896       4.7786       -5.4224       4.6432       7.8682        5.6835        6.4495        1.0457        4.7857       0.818        0.196
          6.1355   0.9901     0.6415     0.551      0.65      -6.66      -4.55720   -4.11800    0.01635      4.87411      9.84286      7.43245      -6.63365      4.58724      8.53398       7.38446       6.29608       1.10706       4.89960      0.70373      0.03062     
          6.47937  1.09312    0.6884     0.5909     0.81      -6.09      -9.1956    -3.0643     -0.14949     3.3187       6.7863       5.7628       -5.5151       1.8721       6.8243        3.0298        5.3791        0.69328       3.7993       0.856        0.417
          5.65     1.206      0.716      0.597      0.43      -8.37      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.40     1.248      0.814      0.704      0.07      -9.15      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.08     1.142      0.751      0.651      0.91      -7.17      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.48     1.402      0.974      0.863      0.93      -7.07      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.48     1.390      0.949      0.837      1.05      -6.88      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          0        0          0          0          0         0          0          0           0            0            0            0            0             0            0             0             0             0             0            0            0];   
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m=9;
n=4;
    kx = 0;
    ky = 0 ;
    kz = 0 ;
[Eg1,~,~]=Eg_calculator(ct,m,n,inputss,kx,ky,kz);
if ~((Eg1<1.8)&&(Eg1>1.7))
    sum_penalty=sum_penalty+10000000;
end
Eg1_out=abs(1.747-Eg1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m=10;
n=4;
[Eg2,~,~]=Eg_calculator(ct,m,n,inputss,kx,ky,kz);
if ~((Eg2<2.4)&&(Eg2>2.25))
    sum_penalty=sum_penalty+10000000;
end
Eg2_out=abs(1.71-Eg2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FitnessFunction3=(100*Eg1_out)+(100*Eg2_out)+sum_penalty;


fitnessfunction=FitnessFunction_GaAs+FitnessFunction_AlAs+FitnessFunction3;
















