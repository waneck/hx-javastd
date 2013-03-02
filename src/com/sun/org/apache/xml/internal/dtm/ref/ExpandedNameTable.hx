package com.sun.org.apache.xml.internal.dtm.ref;
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
* $Id: ExpandedNameTable.java,v 1.2.4.1 2005/09/15 08:15:06 suresh_emailid Exp $
*/
extern class ExpandedNameTable
{
	public static var ELEMENT(default, null) : Int;
	
	public static var ATTRIBUTE(default, null) : Int;
	
	public static var TEXT(default, null) : Int;
	
	public static var CDATA_SECTION(default, null) : Int;
	
	public static var ENTITY_REFERENCE(default, null) : Int;
	
	public static var ENTITY(default, null) : Int;
	
	public static var PROCESSING_INSTRUCTION(default, null) : Int;
	
	public static var COMMENT(default, null) : Int;
	
	public static var DOCUMENT(default, null) : Int;
	
	public static var DOCUMENT_TYPE(default, null) : Int;
	
	public static var DOCUMENT_FRAGMENT(default, null) : Int;
	
	public static var NOTATION(default, null) : Int;
	
	public static var NAMESPACE(default, null) : Int;
	
	/**
	* Create an expanded name table.
	*/
	@:overload public function new() : Void;
	
	/**
	* Given an expanded name represented by namespace, local name and node type,
	* return an ID.  If the expanded-name does not exist in the internal tables,
	* the entry will be created, and the ID will be returned.  Any additional
	* nodes that are created that have this expanded name will use this ID.
	*
	* @param namespace The namespace
	* @param localName The local name
	* @param type The node type
	*
	* @return the expanded-name id of the node.
	*/
	@:overload public function getExpandedTypeID(namespace : String, localName : String, type : Int) : Int;
	
	/**
	* Given an expanded name represented by namespace, local name and node type,
	* return an ID.  If the expanded-name does not exist in the internal tables,
	* the entry will be created, and the ID will be returned.  Any additional
	* nodes that are created that have this expanded name will use this ID.
	* <p>
	* If searchOnly is true, we will return -1 if the name is not found in the
	* table, otherwise the name is added to the table and the expanded name id
	* of the new entry is returned.
	*
	* @param namespace The namespace
	* @param localName The local name
	* @param type The node type
	* @param searchOnly If it is true, we will only search for the expanded name.
	* -1 is return is the name is not found.
	*
	* @return the expanded-name id of the node.
	*/
	@:overload public function getExpandedTypeID(namespace : String, localName : String, type : Int, searchOnly : Bool) : Int;
	
	/**
	* Given a type, return an expanded name ID.Any additional nodes that are
	* created that have this expanded name will use this ID.
	*
	* @return the expanded-name id of the node.
	*/
	@:overload public function getExpandedTypeID(type : Int) : Int;
	
	/**
	* Given an expanded-name ID, return the local name part.
	*
	* @param ExpandedNameID an ID that represents an expanded-name.
	* @return String Local name of this node, or null if the node has no name.
	*/
	@:overload public function getLocalName(ExpandedNameID : Int) : String;
	
	/**
	* Given an expanded-name ID, return the local name ID.
	*
	* @param ExpandedNameID an ID that represents an expanded-name.
	* @return The id of this local name.
	*/
	@:overload @:final public function getLocalNameID(ExpandedNameID : Int) : Int;
	
	/**
	* Given an expanded-name ID, return the namespace URI part.
	*
	* @param ExpandedNameID an ID that represents an expanded-name.
	* @return String URI value of this node's namespace, or null if no
	* namespace was resolved.
	*/
	@:overload public function getNamespace(ExpandedNameID : Int) : String;
	
	/**
	* Given an expanded-name ID, return the namespace URI ID.
	*
	* @param ExpandedNameID an ID that represents an expanded-name.
	* @return The id of this namespace.
	*/
	@:overload @:final public function getNamespaceID(ExpandedNameID : Int) : Int;
	
	/**
	* Given an expanded-name ID, return the local name ID.
	*
	* @param ExpandedNameID an ID that represents an expanded-name.
	* @return The id of this local name.
	*/
	@:overload @:final public function getType(ExpandedNameID : Int) : java.StdTypes.Int16;
	
	/**
	* Return the size of the ExpandedNameTable
	*
	* @return The size of the ExpandedNameTable
	*/
	@:overload public function getSize() : Int;
	
	/**
	* Return the array of extended types
	*
	* @return The array of extended types
	*/
	@:overload public function getExtendedTypes() : java.NativeArray<com.sun.org.apache.xml.internal.dtm.ref.ExtendedType>;
	
	
}
/**
* Inner class which represents a hash table entry.
* The field next points to the next entry which is hashed into
* the same bucket in the case of "hash collision".
*/
@:native('com$sun$org$apache$xml$internal$dtm$ref$ExpandedNameTable$HashEntry') @:internal extern class ExpandedNameTable_HashEntry
{
	@:overload private function new(key : com.sun.org.apache.xml.internal.dtm.ref.ExtendedType, value : Int, hash : Int, next : com.sun.org.apache.xml.internal.dtm.ref.ExpandedNameTable.ExpandedNameTable_HashEntry) : Void;
	
	
}
