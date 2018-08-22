@dir = File.join(File.dirname(__FILE__), "")
@log = File.join(@dir, "logs")
Dir.exists?(@log) || Dir.mkdir(@log)

worker_processes 2
working_directory @dir

timeout 30

listen "0.0.0.0:80", :backlog => 64
pid File.join(@log, "unicorn.pid")
stderr_path File.join(@log, "unicorn.stderr.log")
stdout_path File.join(@log, "unicorn.stdout.log")
