sandbox = 'ubuntu'
target = 'TEsmall_v1.0.sif'
lunarc_path = '/projects/fs1/common/software/TEsmall/1.0/'
user = `whoami`
thisPath = `pwd`

build:
	sudo chown -R ${user}:${user} ${sandbox}
	rm -f ${target}
	singularity build ${target} ${sandbox}
toLunarc:
	rsync -I --progress ${target} stefanl@aurora-ls2.lunarc.lu.se:${lunarc_path}
TEsmall:
	singularity exec --fakeroot -w -B /:/mnt/ ${sandbox}  pip install -U ${thisPath}/tesmall_3.x
