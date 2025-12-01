clear all
load myhandel2023 %音声の読み込み
step=2; %　量子化ステップサイズ
qy=zeros(size(x));		%　配列の確保
dqy=zeros(size(x)); 		%　配列の確保
for i=1:length(x)
	if i==1 
		%1サンプル目はそのまま量子化
		qy(i)=round(x(i)/step);	
        dqy(i)=qy(i)*step;	%　逆量子化
	else
		%　ここにプログラムを4行（もしくは2～3行）挿入し
                       %　プログラムを完成させよ
		qy(i)=round((x(i) - dqy(i-1))/step);
		dqy(i)=dqy(i-1)+qy(i)*step;
           			
	end
end

H = myentropy(qy) % エントロピー
fprintf('エントロピー H = %f \n', H);
E = sqrt(mean((x-dqy).*(x-dqy))) % 平均自乗誤差の平方根
fprintf('RMSE = %f \n', E);


figure(1); plot(x); title('入力の音声信号')
figure(2); plot(dqy); title('量子化後の音声信号')
pause;

% ------------------------------------------------------------
%  音声データ x および dqy（逆量子化後の信号）は
%  -255～255 程度の振幅スケールを持つ。
%  soundsc() で再生するには -1～1 に正規化する必要があるため、
%  255 で割る。
% ------------------------------------------------------------

% soundsc(x/255, Fs)  % 入力音声の再生
% soundsc(dqy/255, Fs)  % 量子化後音声の再生