f = dir('SUB*');
path = 'E:\YaoGZ_psy\Study\Experiment_Alcohol\pre_study\BRAIN\';
for i = 1:length(f)/2
    cd(path)
    filename = ['sub-A',num2str(i,'%05d')];
    mkdir([filename])
    cd([path,filename])
    mkdir('ses-BAS1')
    cd('ses-BAS1')
    mkdir('anat')
    mkdir('func')
    cd([path,filename])
    mkdir('ses-BAS2')
    cd('ses-BAS2')
    mkdir('anat')
    mkdir('func')
end

cd(path)
g = dir('*_1_*');
for i =1:length(g)
    filename = ['sub-A',num2str(i,'%05d')];
    cd([g(i).folder,'\',g(i).name])
    path2 =  ['E:\YaoGZ_psy\Study\Experiment_Alcohol\pre_study\BRAIN\',filename,'\ses-BAS1\anat'];
    path3 =  ['E:\YaoGZ_psy\Study\Experiment_Alcohol\pre_study\BRAIN\',filename,'\ses-BAS1\func'] ;
    k = dir('**\*_t1_*');
    movefile([k(2).folder,'\',k(2).name],[path2,'\',filename,'_ses-BAS1_T1w.nii.gz'])
    movefile([k(1).folder,'\',k(1).name],[path2,'\',filename,'_ses-BAS1_T1w.json'])
    cd([g(i).folder,'\',g(i).name])
    rest1 = dir('**\*Rest1*');
    movefile([rest1(3).folder,'\',rest1(3).name],[path3,'\',filename,'_ses-BAS1_task-rest1_bold.nii.gz'])
    movefile([rest1(2).folder,'\',rest1(2).name],[path3,'\',filename,'_ses-BAS1_task-rest1_bold.json']) 
    cd([g(i).folder,'\',g(i).name])
    rest2 = dir('**\*Rest2*');
    movefile([rest2(3).folder,'\',rest2(3).name],[path3,'\',filename,'_ses-BAS1_task-rest2_bold.nii.gz'])
    movefile([rest2(2).folder,'\',rest2(2).name],[path3,'\',filename,'_ses-BAS1_task-rest2_bold.json'])
    cd([g(i).folder,'\',g(i).name])
    run1 = dir('**\*Run1*');
    movefile([run1(3).folder,'\',run1(3).name],[path3,'\',filename,'_ses-BAS1_task-run1_bold.nii.gz'])
    movefile([run1(2).folder,'\',run1(2).name],[path3,'\',filename,'_ses-BAS1_task-run1_bold.json']) 
    cd([g(i).folder,'\',g(i).name])
    run2 = dir('**\*Run2*');
    movefile([run2(3).folder,'\',run2(3).name],[path3,'\',filename,'_ses-BAS1_task-run2_bold.nii.gz'])
    movefile([run2(2).folder,'\',run2(2).name],[path3,'\',filename,'_ses-BAS1_task-run2_bold.json']) 
end

cd(path)
g = dir('*_2_*');
for i =1:length(g)
    cd([g(i).folder,'\',g(i).name])
    filename = ['sub-A',num2str(i,'%05d')];
    path2 =  ['E:\YaoGZ_psy\Study\Experiment_Alcohol\pre_study\BRAIN\',filename,'\ses-BAS2\anat'];
    path3 =  ['E:\YaoGZ_psy\Study\Experiment_Alcohol\pre_study\BRAIN\',filename,'\ses-BAS2\func'] ;
    k = dir('**\*_t1_*');
    movefile([k(2).folder,'\',k(2).name],[path2,'\',filename,'_ses-BAS2_T1w.nii.gz'])
    movefile([k(1).folder,'\',k(1).name],[path2,'\',filename,'_ses-BAS2_T1w.json'])
    cd([g(i).folder,'\',g(i).name])
    rest1 = dir('**\*Rest1*');
    movefile([rest1(3).folder,'\',rest1(3).name],[path3,'\',filename,'_ses-BAS2_task-rest1_bold.nii.gz'])
    movefile([rest1(2).folder,'\',rest1(2).name],[path3,'\',filename,'_ses-BAS2_task-rest1_bold.json'])  
    cd([g(i).folder,'\',g(i).name])
    rest2 = dir('**\*Rest2*');
    movefile([rest2(3).folder,'\',rest2(3).name],[path3,'\',filename,'_ses-BAS2_task-rest2_bold.nii.gz'])
    movefile([rest2(2).folder,'\',rest2(2).name],[path3,'\',filename,'_ses-BAS2_task-rest2_bold.json'])
    cd([g(i).folder,'\',g(i).name])
    run1 = dir('**\*Run1*');
    movefile([run1(3).folder,'\',run1(3).name],[path3,'\',filename,'_ses-BAS2_task-run1_bold.nii.gz'])
    movefile([run1(2).folder,'\',run1(2).name],[path3,'\',filename,'_ses-BAS2_task-run1_bold.json']) 
    cd([g(i).folder,'\',g(i).name])
    run2 = dir('**\*Run2*');
    movefile([run2(3).folder,'\',run2(3).name],[path3,'\',filename,'_ses-BAS2_task-run2_bold.nii.gz'])
    movefile([run2(2).folder,'\',run2(2).name],[path3,'\',filename,'_ses-BAS2_task-run2_bold.json']) 
end