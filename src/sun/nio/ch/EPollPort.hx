package sun.nio.ch;
/*
* Copyright (c) 2008, 2009, Oracle and/or its affiliates. All rights reserved.
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
* AsynchronousChannelGroup implementation based on the Linux epoll facility.
*/
@:internal extern class EPollPort extends sun.nio.ch.Port
{
	
}
@:native('sun$nio$ch$EPollPort$Event') @:internal extern class EPollPort_Event
{
	
}
/*
* Task to process events from epoll and dispatch to the channel's
* onEvent handler.
*
* Events are retreived from epoll in batch and offered to a BlockingQueue
* where they are consumed by handler threads. A special "NEED_TO_POLL"
* event is used to signal one consumer to re-poll when all events have
* been consumed.
*/
@:native('sun$nio$ch$EPollPort$EventHandlerTask') @:internal extern class EPollPort_EventHandlerTask implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
