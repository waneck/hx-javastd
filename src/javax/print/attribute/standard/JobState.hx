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
extern class JobState extends javax.print.attribute.EnumSyntax implements javax.print.attribute.PrintJobAttribute
{
	/**
	* The job state is unknown.
	*/
	@:public @:static @:final public static var UNKNOWN(default, null) : javax.print.attribute.standard.JobState;
	
	/**
	* The job is a candidate to start processing, but is not yet processing.
	*/
	@:public @:static @:final public static var PENDING(default, null) : javax.print.attribute.standard.JobState;
	
	/**
	* The job is not a candidate for processing for any number of reasons but
	* will return to the PENDING state as soon as the reasons are no longer
	* present. The job's {@link JobStateReasons JobStateReasons} attribute must
	* indicate why the job is no longer a candidate for processing.
	*/
	@:public @:static @:final public static var PENDING_HELD(default, null) : javax.print.attribute.standard.JobState;
	
	/**
	* The job is processing. One or more of the following activities is
	* occurring:
	* <OL TYPE=1>
	* <LI>
	* The job is using, or is attempting to use, one or more purely software
	* processes that are analyzing, creating, or interpreting a PDL, etc.
	* <P>
	* <LI>
	* The job is using, or is attempting to use, one or more hardware
	* devices that are interpreting a PDL, making marks on a medium, and/or
	* performing finishing, such as stapling, etc.
	* <P>
	* <LI>
	* The printer has made the job ready for printing, but the output
	* device is not yet printing it, either because the job hasn't reached the
	* output device or because the job is queued in the output device or some
	* other spooler, awaiting the output device to print it.
	* </OL>
	* <P>
	* When the job is in the PROCESSING state, the entire job state includes
	* the detailed status represented in the printer's {@link PrinterState
	* PrinterState} and {@link PrinterStateReasons PrinterStateReasons}
	* attributes.
	* <P>
	* Implementations may, though they need not, include additional values in
	* the job's {@link JobStateReasons JobStateReasons} attribute to indicate
	* the progress of the job, such as adding the JOB_PRINTING value to
	* indicate when the output device is actually making marks on paper and/or
	* the PROCESSING_TO_STOP_POINT value to indicate that the printer is in the
	* process of canceling or aborting the job.
	*/
	@:public @:static @:final public static var PROCESSING(default, null) : javax.print.attribute.standard.JobState;
	
	/**
	* The job has stopped while processing for any number of reasons and will
	* return to the PROCESSING state as soon as the reasons are no longer
	* present.
	* <P>
	* The job's {@link JobStateReasons JobStateReasons} attribute may indicate
	* why the job has stopped processing. For example, if the output device is
	* stopped, the PRINTER_STOPPED value may be included in the job's {@link
	* JobStateReasons JobStateReasons} attribute.
	* <P>
	* <I>Note:</I> When an output device is stopped, the device usually
	* indicates its condition in human readable form locally at the device. A
	* client can obtain more complete device status remotely by querying the
	* printer's {@link PrinterState PrinterState} and {@link
	* PrinterStateReasons PrinterStateReasons} attributes.
	*/
	@:public @:static @:final public static var PROCESSING_STOPPED(default, null) : javax.print.attribute.standard.JobState;
	
	/**
	* The job has been canceled by some human agency, the printer has completed
	* canceling the job, and all job status attributes have reached their final
	* values for the job. While the printer is canceling the job, the job
	* remains in its current state, but the job's {@link JobStateReasons
	* JobStateReasons} attribute should contain the PROCESSING_TO_STOP_POINT
	* value and one of the CANCELED_BY_USER, CANCELED_BY_OPERATOR, or
	* CANCELED_AT_DEVICE values. When the job moves to the CANCELED state, the
	* PROCESSING_TO_STOP_POINT value, if present, must be removed, but the
	* CANCELED_BY_<I>xxx</I> value, if present, must remain.
	*/
	@:public @:static @:final public static var CANCELED(default, null) : javax.print.attribute.standard.JobState;
	
	/**
	* The job has been aborted by the system (usually while the job was in the
	* PROCESSING or PROCESSING_STOPPED state), the printer has completed
	* aborting the job, and all job status attributes have reached their final
	* values for the job. While the printer is aborting the job, the job
	* remains in its current state, but the job's {@link JobStateReasons
	* JobStateReasons} attribute should contain the PROCESSING_TO_STOP_POINT
	* and ABORTED_BY_SYSTEM values. When the job moves to the ABORTED state,
	* the PROCESSING_TO_STOP_POINT value, if present, must be removed, but the
	* ABORTED_BY_SYSTEM value, if present, must remain.
	*/
	@:public @:static @:final public static var ABORTED(default, null) : javax.print.attribute.standard.JobState;
	
	/**
	* The job has completed successfully or with warnings or errors after
	* processing, all of the job media sheets have been successfully stacked in
	* the appropriate output bin(s), and all job status attributes have reached
	* their final values for the job. The job's {@link JobStateReasons
	* JobStateReasons} attribute should contain one of these values:
	* COMPLETED_SUCCESSFULLY, COMPLETED_WITH_WARNINGS, or
	* COMPLETED_WITH_ERRORS.
	*/
	@:public @:static @:final public static var COMPLETED(default, null) : javax.print.attribute.standard.JobState;
	
	/**
	* Construct a new job state enumeration value with the given integer value.
	*
	* @param  value  Integer value.
	*/
	@:overload @:protected private function new(value : Int) : Void;
	
	/**
	* Returns the string table for class JobState.
	*/
	@:overload @:protected override private function getStringTable() : java.NativeArray<String>;
	
	/**
	* Returns the enumeration value table for class JobState.
	*/
	@:overload @:protected override private function getEnumValueTable() : java.NativeArray<javax.print.attribute.EnumSyntax>;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class JobState and any vendor-defined subclasses, the category is
	* class JobState itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:public @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class JobState and any vendor-defined subclasses, the category
	* name is <CODE>"job-state"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:public @:final public function getName() : String;
	
	
}
