package com.sun.xml.internal.stream;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLEntityStorage
{
	/** Property identifier: error reporter. */
	private static var ERROR_REPORTER(default, null) : String;
	
	/** Feature identifier: warn on duplicate EntityDef */
	private static var WARN_ON_DUPLICATE_ENTITYDEF(default, null) : String;
	
	/** warn on duplicate Entity declaration.
	*  http://apache.org/xml/features/warn-on-duplicate-entitydef
	*/
	private var fWarnDuplicateEntityDef : Bool;
	
	/** Entities. */
	private var fEntities : java.util.Hashtable<Dynamic, Dynamic>;
	
	private var fCurrentEntity : com.sun.xml.internal.stream.Entity.Entity_ScannedEntity;
	
	/**
	* Error reporter. This property identifier is:
	* http://apache.org/xml/properties/internal/error-reporter
	*/
	private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	private var fPropertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager;
	
	/* To keep track whether an entity is declared in external or internal subset*/
	private var fInExternalSubset : Bool;
	
	/** Creates a new instance of XMLEntityStorage */
	@:overload public function new(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/*public XMLEntityStorage(Entity.ScannedEntity currentEntity) {
	fCurrentEntity = currentEntity ;*/
	@:overload public function new(entityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager) : Void;
	
	@:overload public function reset(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	@:overload public function reset() : Void;
	
	/**
	* Resets the component. The component can query the component manager
	* about any features and properties that affect the operation of the
	* component.
	*
	* @param componentManager The component manager.
	*
	* @throws SAXException Thrown by component on initialization error.
	*                      For example, if a feature or property is
	*                      required for the operation of the component, the
	*                      component manager may throw a
	*                      SAXNotRecognizedException or a
	*                      SAXNotSupportedException.
	*/
	@:overload public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/**
	* Returns entity declaration.
	*
	* @param name The name of the entity.
	*
	* @see SymbolTable
	*/
	@:overload public function getEntity(name : String) : com.sun.xml.internal.stream.Entity;
	
	@:overload public function hasEntities() : Bool;
	
	@:overload public function getEntitySize() : Int;
	
	@:overload public function getEntityKeys() : java.util.Enumeration<Dynamic>;
	
	/**
	* Adds an internal entity declaration.
	* <p>
	* <strong>Note:</strong> This method ignores subsequent entity
	* declarations.
	* <p>
	* <strong>Note:</strong> The name should be a unique symbol. The
	* SymbolTable can be used for this purpose.
	*
	* @param name The name of the entity.
	* @param text The text of the entity.
	*
	* @see SymbolTable
	*/
	@:overload public function addInternalEntity(name : String, text : String) : Void;
	
	/**
	* Adds an external entity declaration.
	* <p>
	* <strong>Note:</strong> This method ignores subsequent entity
	* declarations.
	* <p>
	* <strong>Note:</strong> The name should be a unique symbol. The
	* SymbolTable can be used for this purpose.
	*
	* @param name         The name of the entity.
	* @param publicId     The public identifier of the entity.
	* @param literalSystemId     The system identifier of the entity.
	* @param baseSystemId The base system identifier of the entity.
	*                     This is the system identifier of the entity
	*                     where <em>the entity being added</em> and
	*                     is used to expand the system identifier when
	*                     the system identifier is a relative URI.
	*                     When null the system identifier of the first
	*                     external entity on the stack is used instead.
	*
	* @see SymbolTable
	*/
	@:overload public function addExternalEntity(name : String, publicId : String, literalSystemId : String, baseSystemId : String) : Void;
	
	/**
	* Checks whether an entity given by name is external.
	*
	* @param entityName The name of the entity to check.
	* @returns True if the entity is external, false otherwise
	*           (including when the entity is not declared).
	*/
	@:overload public function isExternalEntity(entityName : String) : Bool;
	
	/**
	* Checks whether the declaration of an entity given by name is
	* // in the external subset.
	*
	* @param entityName The name of the entity to check.
	* @returns True if the entity was declared in the external subset, false otherwise
	*           (including when the entity is not declared).
	*/
	@:overload public function isEntityDeclInExternalSubset(entityName : String) : Bool;
	
	/**
	* Adds an unparsed entity declaration.
	* <p>
	* <strong>Note:</strong> This method ignores subsequent entity
	* declarations.
	* <p>
	* <strong>Note:</strong> The name should be a unique symbol. The
	* SymbolTable can be used for this purpose.
	*
	* @param name     The name of the entity.
	* @param publicId The public identifier of the entity.
	* @param systemId The system identifier of the entity.
	* @param notation The name of the notation.
	*
	* @see SymbolTable
	*/
	@:overload public function addUnparsedEntity(name : String, publicId : String, systemId : String, baseSystemId : String, notation : String) : Void;
	
	/**
	* Checks whether an entity given by name is unparsed.
	*
	* @param entityName The name of the entity to check.
	* @returns True if the entity is unparsed, false otherwise
	*          (including when the entity is not declared).
	*/
	@:overload public function isUnparsedEntity(entityName : String) : Bool;
	
	/**
	* Checks whether an entity given by name is declared.
	*
	* @param entityName The name of the entity to check.
	* @returns True if the entity is declared, false otherwise.
	*/
	@:overload public function isDeclaredEntity(entityName : String) : Bool;
	
	/**
	* Expands a system id and returns the system id as a URI, if
	* it can be expanded. A return value of null means that the
	* identifier is already expanded. An exception thrown
	* indicates a failure to expand the id.
	*
	* @param systemId The systemId to be expanded.
	*
	* @return Returns the URI string representing the expanded system
	*         identifier. A null value indicates that the given
	*         system identifier is already expanded.
	*
	*/
	@:overload public static function expandSystemId(systemId : String) : String;
	
	/**
	* Expands a system id and returns the system id as a URI, if
	* it can be expanded. A return value of null means that the
	* identifier is already expanded. An exception thrown
	* indicates a failure to expand the id.
	*
	* @param systemId The systemId to be expanded.
	*
	* @return Returns the URI string representing the expanded system
	*         identifier. A null value indicates that the given
	*         system identifier is already expanded.
	*
	*/
	@:overload public static function expandSystemId(systemId : String, baseSystemId : String) : String;
	
	/**
	* Fixes a platform dependent filename to standard URI form.
	*
	* @param str The string to fix.
	*
	* @return Returns the fixed URI string.
	*/
	@:overload private static function fixURI(str : String) : String;
	
	@:overload public function startExternalSubset() : Void;
	
	@:overload public function endExternalSubset() : Void;
	
	
}
