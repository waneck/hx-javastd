package com.sun.org.apache.xml.internal.utils;
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
* $Id: StringBufferPool.java,v 1.2.4.1 2005/09/15 08:15:54 suresh_emailid Exp $
*/
/**
* This class pools string buffers, since they are reused so often.
* String buffers are good candidates for pooling, because of
* their supporting character arrays.
* @xsl.usage internal
*/
extern class StringBufferPool
{
	/**
	* Get the first free instance of a string buffer, or create one
	* if there are no free instances.
	*
	* @return A string buffer ready for use.
	*/
	@:overload @:synchronized public static function get() : com.sun.org.apache.xml.internal.utils.FastStringBuffer;
	
	/**
	* Return a string buffer back to the pool.
	*
	* @param sb Must be a non-null reference to a string buffer.
	*/
	@:overload @:synchronized public static function free(sb : com.sun.org.apache.xml.internal.utils.FastStringBuffer) : Void;
	
	
}
