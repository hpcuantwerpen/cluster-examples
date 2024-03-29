# Demo for analysing log files of a regular array job.

Make sure a software stack module with support for ``atools`` is loaded
(e.g./, ``calcua/2020a``), and then:

  * Run [``demo.sh``](demo.sh) (which will print a lot of information on what it
    does),

or

  * Execute the [``submit1.sh``](submit1.sh) script
    This is written in such a way that some jobs will actually produce a failure
    note in the log file, and that only the first 80 jobs end and the first 90
    produce a start line in the log file.
  * When all jobs have finished, run [``summary1.sh``](summary1.sh) to analyse the results
  * Execute the [``submit2.sh``](submit2.sh) script.
    The job script should now only produce successful runs.
  * When all jobs have finished, run [``summary2.sh``](summary2.sh) to verify the results.
    Note that now ``arange`` will use two log files.
  * Run the cleanup script [``clean.sh``](clean.sh).
    Don't test again without doing this!
