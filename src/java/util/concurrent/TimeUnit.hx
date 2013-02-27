package java.util.concurrent;
/*
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
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file:
*
* Written by Doug Lea with assistance from members of JCP JSR-166
* Expert Group and released to the public domain, as explained at
* http://creativecommons.org/publicdomain/zero/1.0/
*/
/**
* A <tt>TimeUnit</tt> represents time durations at a given unit of
* granularity and provides utility methods to convert across units,
* and to perform timing and delay operations in these units.  A
* <tt>TimeUnit</tt> does not maintain time information, but only
* helps organize and use time representations that may be maintained
* separately across various contexts.  A nanosecond is defined as one
* thousandth of a microsecond, a microsecond as one thousandth of a
* millisecond, a millisecond as one thousandth of a second, a minute
* as sixty seconds, an hour as sixty minutes, and a day as twenty four
* hours.
*
* <p>A <tt>TimeUnit</tt> is mainly used to inform time-based methods
* how a given timing parameter should be interpreted. For example,
* the following code will timeout in 50 milliseconds if the {@link
* java.util.concurrent.locks.Lock lock} is not available:
*
* <pre>  Lock lock = ...;
*  if (lock.tryLock(50L, TimeUnit.MILLISECONDS)) ...
* </pre>
* while this code will timeout in 50 seconds:
* <pre>
*  Lock lock = ...;
*  if (lock.tryLock(50L, TimeUnit.SECONDS)) ...
* </pre>
*
* Note however, that there is no guarantee that a particular timeout
* implementation will be able to notice the passage of time at the
* same granularity as the given <tt>TimeUnit</tt>.
*
* @since 1.5
* @author Doug Lea
*/
@:require(java5) extern enum TimeUnit
{
	NANOSECONDS;
	MICROSECONDS;
	MILLISECONDS;
	SECONDS;
	MINUTES;
	HOURS;
	DAYS;
	
}

