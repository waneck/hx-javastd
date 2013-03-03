package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: ThreadControllerWrapper.java,v 1.2.4.1 2005/09/15 08:15:59 suresh_emailid Exp $
*/
/**
* A utility class that wraps the ThreadController, which is used
* by IncrementalSAXSource for the incremental building of DTM.
*/
extern class ThreadControllerWrapper
{
	@:overload @:public @:static public static function runThread(runnable : java.lang.Runnable, priority : Int) : java.lang.Thread;
	
	@:overload @:public @:static public static function waitThread(worker : java.lang.Thread, task : java.lang.Runnable) : Void;
	
	
}
/**
* Thread controller utility class for incremental SAX source. Must
* be overriden with a derived class to support thread pooling.
*
* All thread-related stuff is in this class.
*/
@:native('com$sun$org$apache$xml$internal$utils$ThreadControllerWrapper$ThreadController') extern class ThreadControllerWrapper_ThreadController
{
	/**
	* Will get a thread from the pool, execute the task
	*  and return the thread to the pool.
	*
	*  The return value is used only to wait for completion
	*
	*
	* NEEDSDOC @param task
	* @param priority if >0 the task will run with the given priority
	*  ( doesn't seem to be used in xalan, since it's allways the default )
	* @return  The thread that is running the task, can be used
	*          to wait for completion
	*/
	@:overload @:public public function run(task : java.lang.Runnable, priority : Int) : java.lang.Thread;
	
	/**
	*  Wait until the task is completed on the worker
	*  thread.
	*
	* NEEDSDOC @param worker
	* NEEDSDOC @param task
	*
	* @throws InterruptedException
	*/
	@:overload @:public public function waitThread(worker : java.lang.Thread, task : java.lang.Runnable) : Void;
	
	
}
/**
* This class was introduced as a fix for CR 6607339.
*/
@:native('com$sun$org$apache$xml$internal$utils$ThreadControllerWrapper$ThreadController$SafeThread') @:internal extern class ThreadControllerWrapper_ThreadController_SafeThread extends java.lang.Thread
{
	@:overload @:public public function new(target : java.lang.Runnable) : Void;
	
	@:overload @:public @:final override public function run() : Void;
	
	
}
