package sun.util.calendar;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ZoneInfoFile
{
	/**
	* The magic number for the ZoneInfo data file format.
	*/
	@:public @:static @:final public static var JAVAZI_LABEL(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* The ZoneInfo data file format version number. Must increase
	* one when any incompatible change has been made.
	*/
	@:public @:static @:final public static var JAVAZI_VERSION(default, null) : java.StdTypes.Int8;
	
	/**
	* Raw offset data item tag.
	*/
	@:public @:static @:final public static var TAG_RawOffset(default, null) : java.StdTypes.Int8;
	
	/**
	* Known last Daylight Saving Time save value data item tag.
	*/
	@:public @:static @:final public static var TAG_LastDSTSaving(default, null) : java.StdTypes.Int8;
	
	/**
	* Checksum data item tag.
	*/
	@:public @:static @:final public static var TAG_CRC32(default, null) : java.StdTypes.Int8;
	
	/**
	* Transition data item tag.
	*/
	@:public @:static @:final public static var TAG_Transition(default, null) : java.StdTypes.Int8;
	
	/**
	* Offset table data item tag.
	*/
	@:public @:static @:final public static var TAG_Offset(default, null) : java.StdTypes.Int8;
	
	/**
	* SimpleTimeZone parameters data item tag.
	*/
	@:public @:static @:final public static var TAG_SimpleTimeZone(default, null) : java.StdTypes.Int8;
	
	/**
	* Raw GMT offset will change in the future.
	*/
	@:public @:static @:final public static var TAG_GMTOffsetWillChange(default, null) : java.StdTypes.Int8;
	
	/**
	* The ZoneInfoMappings file name.
	*/
	@:public @:static @:final public static var JAVAZM_FILE_NAME(default, null) : String;
	
	/**
	* The magic number for the ZoneInfoMappings file format.
	*/
	@:public @:static @:final public static var JAVAZM_LABEL(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* The ZoneInfoMappings file format version number. Must increase
	* one when any incompatible change has been made.
	*/
	@:public @:static @:final public static var JAVAZM_VERSION(default, null) : java.StdTypes.Int8;
	
	/**
	* Time zone IDs data item tag.
	*/
	@:public @:static @:final public static var TAG_ZoneIDs(default, null) : java.StdTypes.Int8;
	
	/**
	* Raw GMT offsets table data item tag.
	*/
	@:public @:static @:final public static var TAG_RawOffsets(default, null) : java.StdTypes.Int8;
	
	/**
	* Indices to the raw GMT offset table data item tag.
	*/
	@:public @:static @:final public static var TAG_RawOffsetIndices(default, null) : java.StdTypes.Int8;
	
	/**
	* Time zone aliases table data item tag.
	*/
	@:public @:static @:final public static var TAG_ZoneAliases(default, null) : java.StdTypes.Int8;
	
	/**
	* Olson's public zone information version tag.
	*/
	@:public @:static @:final public static var TAG_TZDataVersion(default, null) : java.StdTypes.Int8;
	
	/**
	* Excluded zones item tag. (Added in Mustang)
	*/
	@:public @:static @:final public static var TAG_ExcludedZones(default, null) : java.StdTypes.Int8;
	
	/**
	* Converts the given time zone ID to a platform dependent path
	* name. For example, "America/Los_Angeles" is converted to
	* "America\Los_Angeles" on Win32.
	* @return a modified ID replacing '/' with {@link
	* java.io.File#separatorChar File.separatorChar} if needed.
	*/
	@:overload @:public @:static public static function getFileName(ID : String) : String;
	
	/**
	* Gets a ZoneInfo with the given GMT offset. The object
	* has its ID in the format of GMT{+|-}hh:mm.
	*
	* @param originalId the given custom id (before normalized such as "GMT+9")
	* @param gmtOffset GMT offset <em>in milliseconds</em>
	* @return a ZoneInfo constructed with the given GMT offset
	*/
	@:overload @:public @:static public static function getCustomTimeZone(originalId : String, gmtOffset : Int) : sun.util.calendar.ZoneInfo;
	
	@:overload @:public @:static public static function toCustomID(gmtOffset : Int) : String;
	
	/**
	* @return a ZoneInfo instance created for the specified id, or
	* null if there is no time zone data file found for the specified
	* id.
	*/
	@:overload @:public @:static public static function getZoneInfo(id : String) : sun.util.calendar.ZoneInfo;
	
	
}
