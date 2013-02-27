package com.sun.xml.internal.stream;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
*/
/*
* Copyright 2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class Entity
{
	/** Entity name. */
	public var name : String;
	
	public var inExternalSubset : Bool;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/** Constructs an entity. */
	@:overload public function new(name : String, inExternalSubset : Bool) : Void;
	
	/** Returns true if this entity was declared in the external subset. */
	@:overload public function isEntityDeclInExternalSubset() : Bool;
	
	/** Returns true if this is an external entity. */
	@:overload @:abstract public function isExternal() : Bool;
	
	/** Returns true if this is an unparsed entity. */
	@:overload @:abstract public function isUnparsed() : Bool;
	
	/** Clears the entity. */
	@:overload public function clear() : Void;
	
	/** Sets the values of the entity. */
	@:overload public function setValues(entity : Entity) : Void;
	
	
}
/**
* Internal entity.
*
* @author nb131165
*/
@:native('com$sun$xml$internal$stream$Entity$InternalEntity') extern class Entity_InternalEntity extends Entity
{
	/** Text value of entity. */
	public var text : String;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/** Constructs an internal entity. */
	@:overload public function new(name : String, text : String, inExternalSubset : Bool) : Void;
	
	/** Returns true if this is an external entity. */
	@:overload @:final override public function isExternal() : Bool;
	
	/** Returns true if this is an unparsed entity. */
	@:overload @:final override public function isUnparsed() : Bool;
	
	/** Clears the entity. */
	@:overload override public function clear() : Void;
	
	/** Sets the values of the entity. */
	@:overload override public function setValues(entity : Entity) : Void;
	
	/** Sets the values of the entity. */
	@:overload public function setValues(entity : Entity_InternalEntity) : Void;
	
	
}
/**
* External entity.
*
* @author nb131165
*/
@:native('com$sun$xml$internal$stream$Entity$ExternalEntity') extern class Entity_ExternalEntity extends Entity
{
	/** container for all relevant entity location information. */
	public var entityLocation : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
	
	/** Notation name for unparsed entity. */
	public var notation : String;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/** Constructs an internal entity. */
	@:overload public function new(name : String, entityLocation : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, notation : String, inExternalSubset : Bool) : Void;
	
	/** Returns true if this is an external entity. */
	@:overload @:final override public function isExternal() : Bool;
	
	/** Returns true if this is an unparsed entity. */
	@:overload @:final override public function isUnparsed() : Bool;
	
	/** Clears the entity. */
	@:overload override public function clear() : Void;
	
	/** Sets the values of the entity. */
	@:overload override public function setValues(entity : Entity) : Void;
	
	/** Sets the values of the entity. */
	@:overload public function setValues(entity : Entity_ExternalEntity) : Void;
	
	
}
/**
* Entity state.
*
* @author nb131165
*/
@:native('com$sun$xml$internal$stream$Entity$ScannedEntity') extern class Entity_ScannedEntity extends Entity
{
	/** Default buffer size (4096). */
	public static var DEFAULT_BUFFER_SIZE(default, null) : Int;
	
	/**
	* Buffer size. We get this value from a property. The default size
	* is used if the input buffer size property is not specified.
	* REVISIT: do we need a property for internal entity buffer size?
	*/
	public var fBufferSize : Int;
	
	/** Default buffer size before we've finished with the XMLDecl:  */
	public static var DEFAULT_XMLDECL_BUFFER_SIZE(default, null) : Int;
	
	/** Default internal entity buffer size (1024). */
	public static var DEFAULT_INTERNAL_BUFFER_SIZE(default, null) : Int;
	
	/** XXX let these field remain public right now, though we have defined methods for them.
	* Input stream. */
	public var stream : java.io.InputStream;
	
	/** XXX let these field remain public right now, though we have defined methods for them.
	* Reader. */
	public var reader : java.io.Reader;
	
	/** entity location information */
	public var entityLocation : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
	
	/** Auto-detected encoding. */
	public var encoding : String;
	
	/** True if in a literal.  */
	public var literal : Bool;
	
	public var version : String;
	
	/** Character buffer. */
	public var ch : java.NativeArray<java.StdTypes.Char16>;
	
	/** Position in character buffer at any point of time. */
	public var position : Int;
	
	/** Count of characters present in buffer. */
	public var count : Int;
	
	/** Line number. */
	public var lineNumber : Int;
	
	/** Column number. */
	public var columnNumber : Int;
	
	/** XML version. **/
	public var xmlVersion : String;
	
	/** This variable is used to calculate the current position in the XML stream.
	* Note that fCurrentEntity.position maintains the position relative to
	* the buffer.
	*  At any point of time absolute position in the XML stream can be calculated
	*  as fTotalCountTillLastLoad + fCurrentEntity.position
	*/
	public var fTotalCountTillLastLoad : Int;
	
	/** This variable stores the number of characters read during the load()
	* operation. It is used to calculate fTotalCountTillLastLoad
	*/
	public var fLastCount : Int;
	
	/** Base character offset for computing absolute character offset. */
	public var baseCharOffset : Int;
	
	/** Start position in character buffer. */
	public var startPosition : Int;
	
	public var mayReadChunks : Bool;
	
	public var xmlDeclChunkRead : Bool;
	
	/** returns the name of the current encoding
	*  @return current encoding name
	*/
	@:overload public function getEncodingName() : String;
	
	/**each 'external' parsed entity may have xml/text declaration containing version information
	* @return String version of the enity, for an internal entity version would be null
	*/
	@:overload public function getEntityVersion() : String;
	
	/** each 'external' parsed entity may have xml/text declaration containing version information
	* @param String version of the external parsed entity
	*/
	@:overload public function setEntityVersion(version : String) : Void;
	
	/**  Returns the java.io.Reader associated with this entity.Readers are used
	* to read from the file. Readers wrap any particular  InputStream that was
	* used to open the entity.
	* @return java.io.Reader Reader associated with this entity
	*/
	@:overload public function getEntityReader() : java.io.Reader;
	
	/** if entity was opened using the stream, return the associated inputstream
	* with this entity
	*@return java.io.InputStream InputStream associated with this entity
	*/
	@:overload public function getEntityInputStream() : java.io.InputStream;
	
	/** Constructs a scanned entity. */
	@:overload public function new(name : String, entityLocation : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, stream : java.io.InputStream, reader : java.io.Reader, encoding : String, literal : Bool, mayReadChunks : Bool, isExternal : Bool) : Void;
	
	/**
	* Release any resources associated with this entity.
	*/
	@:overload public function close() : Void;
	
	/** Returns whether the encoding of this entity was externally specified. **/
	@:overload public function isEncodingExternallySpecified() : Bool;
	
	/** Sets whether the encoding of this entity was externally specified. **/
	@:overload public function setEncodingExternallySpecified(value : Bool) : Void;
	
	@:overload public function isDeclaredEncoding() : Bool;
	
	@:overload public function setDeclaredEncoding(value : Bool) : Void;
	
	/** Returns true if this is an external entity. */
	@:overload @:final override public function isExternal() : Bool;
	
	/** Returns true if this is an unparsed entity. */
	@:overload @:final override public function isUnparsed() : Bool;
	
	/** Returns a string representation of this object. */
	@:overload public function toString() : String;
	
	
}
