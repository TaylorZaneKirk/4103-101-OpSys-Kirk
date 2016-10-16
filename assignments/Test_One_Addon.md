### Multi\*
Define the following and give examples of each.

1. Multi-tasking
	- Definition: Same as Multi-programming, except that context-switches occur 
				so quickly that it _appears_ to be occurring concurrently.
				
	- Example: User-interface devices (must specifically the mouse), in that the
				user is able to interact with the system in "real-time" without
				<i>appearing</i> to interrupt any current processes; even though
				these interrupts do occur, the context-switch is so quick that the
				user is unable to notice.
				
2. Multi-programming
	- Definition: The mode of operation by which two or more processes can make
					use of the processor in an effort to emulate concurrent
					performance by "switching context" when the processor is idle
					for any single job.
					
	- Example: Let Jobs[0..2] represent different processes, in which Jobs[0]
				requires some amount of IO. Jobs[0] would receive the processor
				first and would run until the IO was being conducted, leaving
				the processor idle, Jobs[0] would then yield the processor to
				Jobs[1], which would run to completion, allowing Jobs[0] to
				regain the processor. Assuming Jobs[0] has no other operations
				which would leave the processor in an idle state, Jobs[0] would
				then run to completion. Now that Jobs[0, 1] are completed, Jobs[2]
				takes control of the processor and run to completion.
				
3. Multi-processing
	- Definition: The mode of operation in which multiple processors manage
		many processes in parallel by splitting the workload between
		available processors.
	
	- Example: Most, if not all, modern day computers contain more than one
		processor to provide a quick and reactive computer experience by
		being able to divide the processor jobs and distribute them evenly
		across the processors that are available. Each of these processors
		would then use context-switching and multi-programming to manage their
		individual workloads in a (hopefully) efficient manner.
		
4. Multi-threaded
	- Definition: A process that can be split into multiple concurrent
		threads which are distinct from each other and can operate
		individually on (multiple) processor(s).
	
	- Example: A video game in which many instances of the same
		type of enemy are able to respond individually based off
		the context of that specific enemy's thread.

### Review Questions From Chapters 3
1. What is an instruction trace?
	- The sequence of instructions that are performed by a single process
	
1. What common events lead to the creation of a process?
	- New batch job
	- Interactive log-on
	- Created by OS
	- Created by an existing process
	
1. What does it mean to preempt a process?
	- When a "less-important" process has a lock on some memory
		or data that a "more-important" process needs, the
		"less-important" process will be pre-empted and be
		forced to relinquish control of that memory/data to the
		"more-important" process. Useful for resolving deadlocks.
		
1. What is swapping and what is its purpose?
	- Swapping allows the system to write data from memory to the
		hard-drive to be retrieved later. This is useful for dealing
		with low priority processes because the can be stored away for
		later once the processor has handled some higher priority job.
		
1. Why does Figure 3.9b have two blocked states?
	- The "Blocked" state is for processes in main memory that
		are waiting for an event. "Blocked/Suspend" are processes
		in secondary, or virtual, memory. The two states can switch
		between each other, but "Blocked/Suspend" processes can
		move to the "Ready/Suspend" state, whereas Processes in the "Blocked" 
		state are able to move directly to the "Ready" state.
		
1. List four characteristics of a suspended process.
	- The process is not currently available for execution
	- The process might be awaiting an event
	- The process was placed there either by itself, the OS, or parent-process
	- The process may not leave this state until it is ordered to.
	
1. List three general categories of information in a process control block.
	- Process Identification
	- State Information
	- Process Control Information
	
1. Why are two modes (user and kernel) needed?
	- So that the most important data, relevant to the OS,
		is protected from interference from user programs.
		
1. What is the difference between an interrupt and a trap?
	- An interrupt occurs outside of a process, a trap occurs
		within a process.
		
1. Give three examples of an interrupt.
	- Clock Interrupt: Process has reached its quantum and must release
		the processor.
	- I/O interrupt: The user has moved their mouse while the processor is
		already conducting some operation.
	- Memory Fault: The process tries to reference some data outside of main
		memory and the OS places the process into a blocked state until the
		fault has been resolved.
		
1. What is the difference between a mode switch and a process switch?
	- A mode switch is when a single process switches from user-mode to
		kernel-mode (or vice-versa). A process switch is when one process
		is interrupted for a different process. Also a mode-switch can occur
		without changing the state of a process. A process-switch does not.
