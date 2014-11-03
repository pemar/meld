
===============================
     VM instructions
===============================

;; To compile the virtual machine you only need to have a C++11 compatible compiler and libreadline.

;; Use your operating system facilities to install such packages.

;; To download the virtual machine source code:
$ git clone https://github.com/flavioc/meld.git

;; Let's compile the virtual machine:
$ cd meld
$ make

;; To run a program
$ ./meld -f <byte code file> -c thX

;; Where X is the number of threads.
;; To measure execution time, add -t to the command line.
;; To see the final contents of the database, add -d or -s

===============================
     Compiler instructions
===============================

;; First and foremost, install sbcl using the operating systems facilities
;; On my mac, I use brew install sbcl.

;; Now download quicklisp, an utility for installing Lisp packages.
curl -O http://beta.quicklisp.org/quicklisp.lisp

;; Now let's install all the required sbcl packages, load sbcl by typing:
$ sbcl

;; Type the following instructions into SBCL, one by one:

(require 'asdf)
(load "quicklisp")
(quicklisp-quickstart:install)
(ql:quickload "cl-ppcre")
(ql:quickload "yacc")
(ql:quickload "cl-lex")
(ql:quickload "arnesi")
(ql:quickload "alexandria")
(ql:quickload "flexi-streams")
(ql:quickload "ieee-floats")
(ql:add-to-init-file)

;; Now it's time to download cl-meld:
$ cd ~/quicklisp/local-projects
$ git clone https://github.com/flavioc/cl-meld.git

;; Before you can load up the compiler, you need to patch CL-Yacc so that it supports comments in the source code:

$ cd ~/quicklisp/dists/quicklisp/software/cl-yacc-<version>
$ patch -p0 < ~/cl-meld/yacc-comments.patch
$ sbcl

;; Run on the lisp interpreter:
(ql:quickload "cl-meld")
;; To compile a file, just do this:
(cl-meld:meld-compile "path-to-file.meld" "path-to-output-file")

;; If everything went ok you should see "All done. T"

======================================
     Virtual Machine directories
======================================

   - db
      implements the database, including facts (tuples) and nodes
   - external
      implements the available external functions (callable in meld programs)
   - mem
      memory allocator for objects used during execution. This improves multithreaded performance since the default allocator is sequential.
   - queue
      many types of queues here, including priority queues. It's all template code.
   - runtime
      classes for list and string objects used for meld objects.
   - sched
      sched::base is the base class for all the available schedulers.
   - stat
      code for generating execution statistics.
   - thread
      multithreaded schedulers.
   - utils
      utilities.
   - vm
      the core of the virtual machine, executes VM instructions.

Important files:
   - meld.cpp: main meld program.
