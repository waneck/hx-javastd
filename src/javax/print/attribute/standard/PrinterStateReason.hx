package javax.print.attribute.standard;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class PrinterStateReason extends javax.print.attribute.EnumSyntax implements javax.print.attribute.Attribute
{
	/**
	* The printer has detected an error other than ones listed below.
	*/
	public static var OTHER(default, null) : PrinterStateReason;
	
	/**
	* A tray has run out of media.
	*/
	public static var MEDIA_NEEDED(default, null) : PrinterStateReason;
	
	/**
	* The device has a media jam.
	*/
	public static var MEDIA_JAM(default, null) : PrinterStateReason;
	
	/**
	* Someone has paused the printer, but the device(s) are taking an
	* appreciable time to stop. Later, when all output has stopped,
	* the {@link  PrinterState PrinterState} becomes STOPPED,
	* and the PAUSED value replaces
	* the MOVING_TO_PAUSED value in the {@link PrinterStateReasons
	* PrinterStateReasons} attribute. This value must be supported if the
	* printer can be paused and the implementation takes significant time to
	* pause a device in certain circumstances.
	*/
	public static var MOVING_TO_PAUSED(default, null) : PrinterStateReason;
	
	/**
	* Someone has paused the printer and the printer's {@link PrinterState
	* PrinterState} is STOPPED. In this state, a printer must not produce
	* printed output, but it must perform other operations requested by a
	* client. If a printer had been printing a job when the printer was
	* paused,
	* the Printer must resume printing that job when the printer is no longer
	* paused and leave no evidence in the printed output of such a pause.
	* This value must be supported if the printer can be paused.
	*/
	public static var PAUSED(default, null) : PrinterStateReason;
	
	/**
	* Someone has removed a printer from service, and the device may be
	* powered down or physically removed.
	* In this state, a printer must not produce
	* printed output, and unless the printer is realized by a print server
	* that is still active, the printer must perform no other operations
	* requested by a client.
	* If a printer had been printing a job when it was shut down,
	* the printer need not resume printing that job when the printer is no
	* longer shut down. If the printer resumes printing such a job, it may
	* leave evidence in the printed output of such a shutdown, e.g. the part
	* printed before the shutdown may be printed a second time after the
	* shutdown.
	*/
	public static var SHUTDOWN(default, null) : PrinterStateReason;
	
	/**
	* The printer has scheduled a job on the output device and is in the
	* process of connecting to a shared network output device (and might not
	* be able to actually start printing the job for an arbitrarily long time
	* depending on the usage of the output device by other servers on the
	* network).
	*/
	public static var CONNECTING_TO_DEVICE(default, null) : PrinterStateReason;
	
	/**
	* The server was able to connect to the output device (or is always
	* connected), but was unable to get a response from the output device.
	*/
	public static var TIMED_OUT(default, null) : PrinterStateReason;
	
	/**
	* The printer is in the process of stopping the device and will be
	* stopped in a while.
	* When the device is stopped, the printer will change the
	* {@link PrinterState PrinterState} to STOPPED. The STOPPING reason is
	* never an error, even for a printer with a single output device. When an
	* output device ceases accepting jobs, the printer's {@link
	* PrinterStateReasons PrinterStateReasons} will have this reason while
	* the output device completes printing.
	*/
	public static var STOPPING(default, null) : PrinterStateReason;
	
	/**
	* When a printer controls more than one output device, this reason
	* indicates that one or more output devices are stopped. If the reason's
	* severity is a report, fewer than half of the output devices are
	* stopped.
	* If the reason's severity is a warning, half or more but fewer than
	* all of the output devices are stopped.
	*/
	public static var STOPPED_PARTLY(default, null) : PrinterStateReason;
	
	/**
	* The device is low on toner.
	*/
	public static var TONER_LOW(default, null) : PrinterStateReason;
	
	/**
	* The device is out of toner.
	*/
	public static var TONER_EMPTY(default, null) : PrinterStateReason;
	
	/**
	* The limit of persistent storage allocated for spooling has been
	* reached.
	* The printer is temporarily unable to accept more jobs. The printer will
	* remove this reason when it is able to accept more jobs.
	* This value should  be used by a non-spooling printer that only
	* accepts one or a small number
	* jobs at a time or a spooling printer that has filled the spool space.
	*/
	public static var SPOOL_AREA_FULL(default, null) : PrinterStateReason;
	
	/**
	* One or more covers on the device are open.
	*/
	public static var COVER_OPEN(default, null) : PrinterStateReason;
	
	/**
	* One or more interlock devices on the printer are unlocked.
	*/
	public static var INTERLOCK_OPEN(default, null) : PrinterStateReason;
	
	/**
	* One or more doors on the device are open.
	*/
	public static var DOOR_OPEN(default, null) : PrinterStateReason;
	
	/**
	* One or more input trays are not in the device.
	*/
	public static var INPUT_TRAY_MISSING(default, null) : PrinterStateReason;
	
	/**
	* At least one input tray is low on media.
	*/
	public static var MEDIA_LOW(default, null) : PrinterStateReason;
	
	/**
	* At least one input tray is empty.
	*/
	public static var MEDIA_EMPTY(default, null) : PrinterStateReason;
	
	/**
	* One or more output trays are not in the device.
	*/
	public static var OUTPUT_TRAY_MISSING(default, null) : PrinterStateReason;
	
	/**
	* One or more output areas are almost full
	* (e.g. tray, stacker, collator).
	*/
	public static var OUTPUT_AREA_ALMOST_FULL(default, null) : PrinterStateReason;
	
	/**
	* One or more output areas are full (e.g. tray, stacker, collator).
	*/
	public static var OUTPUT_AREA_FULL(default, null) : PrinterStateReason;
	
	/**
	* The device is low on at least one marker supply (e.g. toner, ink,
	* ribbon).
	*/
	public static var MARKER_SUPPLY_LOW(default, null) : PrinterStateReason;
	
	/**
	* The device is out of at least one marker supply (e.g. toner, ink,
	* ribbon).
	*/
	public static var MARKER_SUPPLY_EMPTY(default, null) : PrinterStateReason;
	
	/**
	* The device marker supply waste receptacle is almost full.
	*/
	public static var MARKER_WASTE_ALMOST_FULL(default, null) : PrinterStateReason;
	
	/**
	* The device marker supply waste receptacle is full.
	*/
	public static var MARKER_WASTE_FULL(default, null) : PrinterStateReason;
	
	/**
	* The fuser temperature is above normal.
	*/
	public static var FUSER_OVER_TEMP(default, null) : PrinterStateReason;
	
	/**
	* The fuser temperature is below normal.
	*/
	public static var FUSER_UNDER_TEMP(default, null) : PrinterStateReason;
	
	/**
	* The optical photo conductor is near end of life.
	*/
	public static var OPC_NEAR_EOL(default, null) : PrinterStateReason;
	
	/**
	* The optical photo conductor is no longer functioning.
	*/
	public static var OPC_LIFE_OVER(default, null) : PrinterStateReason;
	
	/**
	* The device is low on developer.
	*/
	public static var DEVELOPER_LOW(default, null) : PrinterStateReason;
	
	/**
	* The device is out of developer.
	*/
	public static var DEVELOPER_EMPTY(default, null) : PrinterStateReason;
	
	/**
	* An interpreter resource is unavailable (e.g., font, form).
	*/
	public static var INTERPRETER_RESOURCE_UNAVAILABLE(default, null) : PrinterStateReason;
	
	/**
	* Construct a new printer state reason enumeration value with
	* the given integer value.
	*
	* @param  value  Integer value.
	*/
	@:overload private function new(value : Int) : Void;
	
	/**
	* Returns the string table for class PrinterStateReason.
	*/
	@:overload override private function getStringTable() : java.NativeArray<String>;
	
	/**
	* Returns the enumeration value table for class PrinterStateReason.
	*/
	@:overload override private function getEnumValueTable() : java.NativeArray<javax.print.attribute.EnumSyntax>;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class PrinterStateReason and any vendor-defined subclasses, the
	* category is class PrinterStateReason itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class PrinterStateReason and any vendor-defined subclasses, the
	* category name is <CODE>"printer-state-reason"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:final public function getName() : String;
	
	
}
