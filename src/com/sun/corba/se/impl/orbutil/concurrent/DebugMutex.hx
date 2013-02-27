package com.sun.corba.se.impl.orbutil.concurrent;
/*
* Copyright (c) 2001, 2002, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
File: Mutex.java

Originally written by Doug Lea and released into the public domain.
This may be used for any purposes whatsoever without acknowledgment.
Thanks for the assistance and support of Sun Microsystems Labs,
and everyone contributing, testing, and using this code.

History:
Date       Who                What
11Jun1998  dl               Create public version
*/
/**
* A simple non-reentrant mutual exclusion lock.
* The lock is free upon construction. Each acquire gets the
* lock, and each release frees it. Releasing a lock that
* is already free has no effect.
* <p>
* This implementation makes no attempt to provide any fairness
* or ordering guarantees. If you need them, consider using one of
* the Semaphore implementations as a locking mechanism.
* <p>
* <b>Sample usage</b><br>
* <p>
* Mutex can be useful in constructions that cannot be
* expressed using java synchronized blocks because the
* acquire/release pairs do not occur in the same method or
* code block. For example, you can use them for hand-over-hand
* locking across the nodes of a linked list. This allows
* extremely fine-grained locking,  and so increases
* potential concurrency, at the cost of additional complexity and
* overhead that would normally make this worthwhile only in cases of
* extreme contention.
* <pre>
* class Node {
*   Object item;
*   Node next;
*   Mutex lock = new Mutex(); // each node keeps its own lock
*
*   Node(Object x, Node n) { item = x; next = n; }
* }
*
* class List {
*    protected Node head; // pointer to first node of list
*
*    // Use plain java synchronization to protect head field.
*    //  (We could instead use a Mutex here too but there is no
*    //  reason to do so.)
*    protected synchronized Node getHead() { return head; }
*
*    boolean search(Object x) throws InterruptedException {
*      Node p = getHead();
*      if (p == null) return false;
*
*      //  (This could be made more compact, but for clarity of illustration,
*      //  all of the cases that can arise are handled separately.)
*
*      p.lock.acquire();              // Prime loop by acquiring first lock.
*                                     //    (If the acquire fails due to
*                                     //    interrupt, the method will throw
*                                     //    InterruptedException now,
*                                     //    so there is no need for any
*                                     //    further cleanup.)
*      for (;;) {
*        if (x.equals(p.item)) {
*          p.lock.release();          // release current before return
*          return true;
*        }
*        else {
*          Node nextp = p.next;
*          if (nextp == null) {
*            p.lock.release();       // release final lock that was held
*            return false;
*          }
*          else {
*            try {
*              nextp.lock.acquire(); // get next lock before releasing current
*            }
*            catch (InterruptedException ex) {
*              p.lock.release();    // also release current if acquire fails
*              throw ex;
*            }
*            p.lock.release();      // release old lock now that new one held
*            p = nextp;
*          }
*        }
*      }
*    }
*
*    synchronized void add(Object x) { // simple prepend
*      // The use of `synchronized'  here protects only head field.
*      // The method does not need to wait out other traversers
*      // who have already made it past head.
*
*      head = new Node(x, head);
*    }
*
*    // ...  other similar traversal and update methods ...
* }
* </pre>
* <p>
* <p>This version adds some debugging capability: it will detect an attempt by a thread
* that holds the lock to acquire it for a second time, and also an attempt by a thread that
* does not hold the mutex to release it.
* @see Semaphore
* <p>[<a href="http://gee.cs.oswego.edu/dl/classes/EDU/oswego/cs/dl/util/concurrent/intro.html"> Introduction to this package. </a>]
**/
extern class DebugMutex implements com.sun.corba.se.impl.orbutil.concurrent.Sync
{
	/** The lock status **/
	private var inuse_ : Bool;
	
	private var holder_ : java.lang.Thread;
	
	@:overload public function acquire() : Void;
	
	@:overload @:synchronized public function release() : Void;
	
	@:overload public function attempt(msecs : haxe.Int64) : Bool;
	
	
}
