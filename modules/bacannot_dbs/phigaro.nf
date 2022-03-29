process PHIGARO_DB {
    publishDir "${params.output}/phigaro_db", mode: 'copy', overwrite: "$params.force_update"
    label = [ 'db_download', 'process_medium' ]
   
    output:
    file("*")

    script:
    """   
    # download phigaro database
    wget http://download.ripcm.com/phigaro/allpvoghmms
    wget http://download.ripcm.com/phigaro/allpvoghmms.h3f
    wget http://download.ripcm.com/phigaro/allpvoghmms.h3i
    wget http://download.ripcm.com/phigaro/allpvoghmms.h3m
    wget http://download.ripcm.com/phigaro/allpvoghmms.h3p
    """
}