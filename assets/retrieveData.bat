@echo off
echo �޸����á��˽��������https://github.com/hjenryin/BCJH-Metropolis/ �Ա���������
echo ����������https://github.com/hjenryin/BCJH-Metropolis/discussions/categories/q-a ����
echo ���κ��뷨����https://github.com/hjenryin/BCJH-Metropolis/discussions/categories/general ����
set "bcjhid="
set /p bcjhid=�����Ҫ���������û����ã�������ײ˾ջ�id������ֱ�ӻس���

if "%bcjhid%"=="" (
    echo δ����id�����������û�����
) 

if not "%bcjhid%"=="" (
    echo ���������û�����
    powershell -command $json=$(iwr -uri "https://bcjh.xyz/api/download_data?id=%bcjhid%" ^| ConvertFrom-Json^) ^; if ($json.result -eq 'True'^) { Write-Host �û��������Ŀ������룩��$($json.user^) -ForegroundColor:Green^; echo $json.data ^> userData.json } else { Write-Host ����ʧ�ܣ�����id�Ƿ���ȷ -BackgroundColor:Red -ForegroundColor:White ^}

)

.\bcjh.exe
echo ��������ر�
pause
