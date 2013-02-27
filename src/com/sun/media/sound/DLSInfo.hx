package com.sun.media.sound;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
* This class is used to store information  to describe soundbanks, instruments
* and samples. It is stored inside a "INFO" List Chunk inside DLS files.
*
* @author Karl Helgason
*/
extern class DLSInfo
{
	/**
	* (INAM) Title or subject.
	*/
	public var name : String;
	
	/**
	* (ICRD) Date of creation, the format is: YYYY-MM-DD.
	*        For example 2007-01-01 for 1. january of year 2007.
	*/
	public var creationDate : String;
	
	/**
	* (IENG) Name of engineer who created the object.
	*/
	public var engineers : String;
	
	/**
	* (IPRD) Name of the product which the object is intended for.
	*/
	public var product : String;
	
	/**
	* (ICOP) Copyright information.
	*/
	public var copyright : String;
	
	/**
	* (ICMT) General comments. Doesn't contain newline characters.
	*/
	public var comments : String;
	
	/**
	* (ISFT) Name of software package used to create the file.
	*/
	public var tools : String;
	
	/**
	* (IARL) Where content is archived.
	*/
	public var archival_location : String;
	
	/**
	* (IART) Artists of original content.
	*/
	public var artist : String;
	
	/**
	* (ICMS) Names of persons or orginizations who commissioned the file.
	*/
	public var commissioned : String;
	
	/**
	* (IGNR) Genre of the work.
	*        Example: jazz, classical, rock, etc.
	*/
	public var genre : String;
	
	/**
	* (IKEY) List of keyword that describe the content.
	*        Examples: FX, bird, piano, etc.
	*/
	public var keywords : String;
	
	/**
	* (IMED) Describes original medium of the data.
	*        For example: record, CD, etc.
	*/
	public var medium : String;
	
	/**
	* (ISBJ) Description of the content.
	*/
	public var subject : String;
	
	/**
	* (ISRC) Name of person or orginization who supplied
	*        orginal material for the file.
	*/
	public var source : String;
	
	/**
	* (ISRF) Source media for sample data is from.
	*        For example: CD, TV, etc.
	*/
	public var source_form : String;
	
	/**
	* (ITCH) Technician who sample the file/object.
	*/
	public var technician : String;
	
	
}
