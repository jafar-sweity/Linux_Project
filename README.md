# Kernel Logs Collector and Dropbox Uploader

This project provides a shell script that automates the collection of Linux kernel logs for the last hour, compresses them using the bzip2 algorithm, and uploads the compressed file to a Dropbox folder. The script is designed to be executed as a scheduled task using systemd timers.



## Overview

The Linux kernel generates logs for various events that occur in the kernel space. These logs provide valuable insights into system behavior, errors, and warnings. This project offers a convenient solution to automatically collect these kernel logs for the last hour, package them in a compressed format, and upload them to a designated Dropbox folder.

## Features

- Automated collection of Linux kernel logs for the last hour.
- Compression of collected logs using the bzip2 algorithm.
- Seamless upload of compressed log files to a Dropbox folder.
- Integration with systemd timers for scheduled execution.

## Dropbox link
- https://www.dropbox.com/home/logsProject
- 
