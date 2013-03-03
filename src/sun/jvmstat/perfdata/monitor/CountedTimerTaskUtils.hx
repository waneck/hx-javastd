package sun.jvmstat.perfdata.monitor;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
/**
* Utility methods for use with {@link CountedTimerTask} instances.
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class CountedTimerTaskUtils
{
	/**
	* Reschedule a CountedTimeTask at a different interval. Probably not
	* named correctly. This method cancels the old task and computes the
	* delay for starting the new task based on the new interval and the
	* time at which the old task was last executed.
	*
	* @param timer the Timer for the task
	* @param oldTask the old Task
	* @param newTask the new Task
	* @param oldInterval the old interval; use for debugging output
	*                    purposes only.
	* @param newInterval scheduling interval in milliseconds
	*/
	@:overload @:public @:static public static function reschedule(timer : java.util.Timer, oldTask : sun.jvmstat.perfdata.monitor.CountedTimerTask, newTask : sun.jvmstat.perfdata.monitor.CountedTimerTask, oldInterval : Int, newInterval : Int) : Void;
	
	
}
