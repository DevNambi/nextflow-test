#!/usr/bin/env nextflow

params.s3bucket = 's3://hutch.cloud.dev'


process sayHello {
    echo = True
    publishDir = "${params.s3bucket}"

    output:
      file 'cellrangertestrunlog.txt'
    script:
      """
      cellranger testrun --id=tiny > cellrangertestrunlog.txt
      """
}


