package sun.jvmstat.perfdata.monitor.v2_0;
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
* Class representing the 2.0 version of the HotSpot PerfData instrumentation
* buffer header.
* <p>
* The PerfDataBufferPrologue class supports parsing of the version
* specific portions of the PerfDataPrologue C structure:
* <pre>
* typedef struct {
*   ...                      // handled by superclass
*   jint used;               // number of PerfData memory bytes used
*   jint overflow;           // number of bytes of overflow
*   jlong mod_time_stamp;    // time stamp of the last structural modification
*   jint entry_offset;       // offset of the first PerfDataEntry
*   jint num_entries;        // number of allocated PerfData entries
* } PerfDataPrologue
* </pre>
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class PerfDataBufferPrologue extends sun.jvmstat.perfdata.monitor.AbstractPerfDataBufferPrologue
{
	/**
	* Create an instance of PerfDataBufferPrologue from the given
	* ByteBuffer object.
	*
	* @param byteBuffer the buffer containing the binary header data
	*/
	@:overload @:public public function new(byteBuffer : java.nio.ByteBuffer) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function supportsAccessible() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function isAccessible() : Bool;
	
	/**
	* Get the utilization of the instrumentation memory buffer.
	*
	* @return int - the utilization of the buffer
	*/
	@:overload @:public public function getUsed() : Int;
	
	/**
	* Get the size of the instrumentation memory buffer.
	*
	* @return int - the size of the buffer
	*/
	@:overload @:public public function getBufferSize() : Int;
	
	/**
	* Get the buffer overflow amount. This value is non-zero if the
	* HotSpot JVM has overflowed the instrumentation memory buffer.
	* The target JVM can be restarted with -XX:PerfDataMemSize=X to
	* create a larger memory buffer.
	*
	* @return int - the size of the buffer
	*/
	@:overload @:public public function getOverflow() : Int;
	
	/**
	* Get the time of last modification for the instrumentation
	* memory buffer. This method returns the time, as ticks since the
	* start of the target JVM, of the last structural modification to
	* the instrumentation buffer. Structural modifications correspond to
	* the addition or deletion of instrumentation objects. Updates to
	* counter values are not structural modifications.
	*/
	@:overload @:public public function getModificationTimeStamp() : haxe.Int64;
	
	/**
	* Get the offset of the first PerfDataEntry.
	*/
	@:overload @:public public function getEntryOffset() : Int;
	
	/**
	* Get the offset of the first PerfDataEntry.
	*/
	@:overload @:public public function getNumEntries() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getSize() : Int;
	
	
}
