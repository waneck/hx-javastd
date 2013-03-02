package java.sql;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface Clob
{
	/**
	* Retrieves the number of characters
	* in the <code>CLOB</code> value
	* designated by this <code>Clob</code> object.
	*
	* @return length of the <code>CLOB</code> in characters
	* @exception SQLException if there is an error accessing the
	*            length of the <code>CLOB</code> value
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function length() : haxe.Int64;
	
	/**
	* Retrieves a copy of the specified substring
	* in the <code>CLOB</code> value
	* designated by this <code>Clob</code> object.
	* The substring begins at position
	* <code>pos</code> and has up to <code>length</code> consecutive
	* characters.
	*
	* @param pos the first character of the substring to be extracted.
	*            The first character is at position 1.
	* @param length the number of consecutive characters to be copied;
	* the value for length must be 0 or greater
	* @return a <code>String</code> that is the specified substring in
	*         the <code>CLOB</code> value designated by this <code>Clob</code> object
	* @exception SQLException if there is an error accessing the
	*            <code>CLOB</code> value; if pos is less than 1 or length is
	* less than 0
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function getSubString(pos : haxe.Int64, length : Int) : String;
	
	/**
	* Retrieves the <code>CLOB</code> value designated by this <code>Clob</code>
	* object as a <code>java.io.Reader</code> object (or as a stream of
	* characters).
	*
	* @return a <code>java.io.Reader</code> object containing the
	*         <code>CLOB</code> data
	* @exception SQLException if there is an error accessing the
	*            <code>CLOB</code> value
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #setCharacterStream
	* @since 1.2
	*/
	@:require(java2) @:overload public function getCharacterStream() : java.io.Reader;
	
	/**
	* Retrieves the <code>CLOB</code> value designated by this <code>Clob</code>
	* object as an ascii stream.
	*
	* @return a <code>java.io.InputStream</code> object containing the
	*         <code>CLOB</code> data
	* @exception SQLException if there is an error accessing the
	*            <code>CLOB</code> value
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #setAsciiStream
	* @since 1.2
	*/
	@:require(java2) @:overload public function getAsciiStream() : java.io.InputStream;
	
	/**
	* Retrieves the character position at which the specified substring
	* <code>searchstr</code> appears in the SQL <code>CLOB</code> value
	* represented by this <code>Clob</code> object.  The search
	* begins at position <code>start</code>.
	*
	* @param searchstr the substring for which to search
	* @param start the position at which to begin searching; the first position
	*              is 1
	* @return the position at which the substring appears or -1 if it is not
	*         present; the first position is 1
	* @exception SQLException if there is an error accessing the
	*            <code>CLOB</code> value or if pos is less than 1
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function position(searchstr : String, start : haxe.Int64) : haxe.Int64;
	
	/**
	* Retrieves the character position at which the specified
	* <code>Clob</code> object <code>searchstr</code> appears in this
	* <code>Clob</code> object.  The search begins at position
	* <code>start</code>.
	*
	* @param searchstr the <code>Clob</code> object for which to search
	* @param start the position at which to begin searching; the first
	*              position is 1
	* @return the position at which the <code>Clob</code> object appears
	*              or -1 if it is not present; the first position is 1
	* @exception SQLException if there is an error accessing the
	*            <code>CLOB</code> value or if start is less than 1
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function position(searchstr : java.sql.Clob, start : haxe.Int64) : haxe.Int64;
	
	/**
	* Writes the given Java <code>String</code> to the <code>CLOB</code>
	* value that this <code>Clob</code> object designates at the position
	* <code>pos</code>. The string will overwrite the existing characters
	* in the <code>Clob</code> object starting at the position
	* <code>pos</code>.  If the end of the <code>Clob</code> value is reached
	* while writing the given string, then the length of the <code>Clob</code>
	* value will be increased to accomodate the extra characters.
	* <p>
	* <b>Note:</b> If the value specified for <code>pos</code>
	* is greater then the length+1 of the <code>CLOB</code> value then the
	* behavior is undefined. Some JDBC drivers may throw a
	* <code>SQLException</code> while other drivers may support this
	* operation.
	*
	* @param pos the position at which to start writing to the <code>CLOB</code>
	*         value that this <code>Clob</code> object represents;
	* The first position is 1
	* @param str the string to be written to the <code>CLOB</code>
	*        value that this <code>Clob</code> designates
	* @return the number of characters written
	* @exception SQLException if there is an error accessing the
	*            <code>CLOB</code> value or if pos is less than 1
	*
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function setString(pos : haxe.Int64, str : String) : Int;
	
	/**
	* Writes <code>len</code> characters of <code>str</code>, starting
	* at character <code>offset</code>, to the <code>CLOB</code> value
	* that this <code>Clob</code> represents.  The string will overwrite the existing characters
	* in the <code>Clob</code> object starting at the position
	* <code>pos</code>.  If the end of the <code>Clob</code> value is reached
	* while writing the given string, then the length of the <code>Clob</code>
	* value will be increased to accomodate the extra characters.
	* <p>
	* <b>Note:</b> If the value specified for <code>pos</code>
	* is greater then the length+1 of the <code>CLOB</code> value then the
	* behavior is undefined. Some JDBC drivers may throw a
	* <code>SQLException</code> while other drivers may support this
	* operation.
	*
	* @param pos the position at which to start writing to this
	*        <code>CLOB</code> object; The first position  is 1
	* @param str the string to be written to the <code>CLOB</code>
	*        value that this <code>Clob</code> object represents
	* @param offset the offset into <code>str</code> to start reading
	*        the characters to be written
	* @param len the number of characters to be written
	* @return the number of characters written
	* @exception SQLException if there is an error accessing the
	*            <code>CLOB</code> value or if pos is less than 1
	*
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function setString(pos : haxe.Int64, str : String, offset : Int, len : Int) : Int;
	
	/**
	* Retrieves a stream to be used to write Ascii characters to the
	* <code>CLOB</code> value that this <code>Clob</code> object represents,
	* starting at position <code>pos</code>.  Characters written to the stream
	* will overwrite the existing characters
	* in the <code>Clob</code> object starting at the position
	* <code>pos</code>.  If the end of the <code>Clob</code> value is reached
	* while writing characters to the stream, then the length of the <code>Clob</code>
	* value will be increased to accomodate the extra characters.
	* <p>
	* <b>Note:</b> If the value specified for <code>pos</code>
	* is greater then the length+1 of the <code>CLOB</code> value then the
	* behavior is undefined. Some JDBC drivers may throw a
	* <code>SQLException</code> while other drivers may support this
	* operation.
	*
	* @param pos the position at which to start writing to this
	*        <code>CLOB</code> object; The first position is 1
	* @return the stream to which ASCII encoded characters can be written
	* @exception SQLException if there is an error accessing the
	*            <code>CLOB</code> value or if pos is less than 1
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getAsciiStream
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function setAsciiStream(pos : haxe.Int64) : java.io.OutputStream;
	
	/**
	* Retrieves a stream to be used to write a stream of Unicode characters
	* to the <code>CLOB</code> value that this <code>Clob</code> object
	* represents, at position <code>pos</code>. Characters written to the stream
	* will overwrite the existing characters
	* in the <code>Clob</code> object starting at the position
	* <code>pos</code>.  If the end of the <code>Clob</code> value is reached
	* while writing characters to the stream, then the length of the <code>Clob</code>
	* value will be increased to accomodate the extra characters.
	* <p>
	* <b>Note:</b> If the value specified for <code>pos</code>
	* is greater then the length+1 of the <code>CLOB</code> value then the
	* behavior is undefined. Some JDBC drivers may throw a
	* <code>SQLException</code> while other drivers may support this
	* operation.
	*
	* @param  pos the position at which to start writing to the
	*        <code>CLOB</code> value; The first position is 1
	*
	* @return a stream to which Unicode encoded characters can be written
	* @exception SQLException if there is an error accessing the
	*            <code>CLOB</code> value or if pos is less than 1
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getCharacterStream
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function setCharacterStream(pos : haxe.Int64) : java.io.Writer;
	
	/**
	* Truncates the <code>CLOB</code> value that this <code>Clob</code>
	* designates to have a length of <code>len</code>
	* characters.
	* <p>
	* <b>Note:</b> If the value specified for <code>pos</code>
	* is greater then the length+1 of the <code>CLOB</code> value then the
	* behavior is undefined. Some JDBC drivers may throw a
	* <code>SQLException</code> while other drivers may support this
	* operation.
	*
	* @param len the length, in characters, to which the <code>CLOB</code> value
	*        should be truncated
	* @exception SQLException if there is an error accessing the
	*            <code>CLOB</code> value or if len is less than 0
	*
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function truncate(len : haxe.Int64) : Void;
	
	/**
	* This method frees the <code>Clob</code> object and releases the resources the resources
	* that it holds.  The object is invalid once the <code>free</code> method
	* is called.
	* <p>
	* After <code>free</code> has been called, any attempt to invoke a
	* method other than <code>free</code> will result in a <code>SQLException</code>
	* being thrown.  If <code>free</code> is called multiple times, the subsequent
	* calls to <code>free</code> are treated as a no-op.
	* <p>
	* @throws SQLException if an error occurs releasing
	* the Clob's resources
	*
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function free() : Void;
	
	/**
	* Returns a <code>Reader</code> object that contains a partial <code>Clob</code> value, starting
	* with the character specified by pos, which is length characters in length.
	*
	* @param pos the offset to the first character of the partial value to
	* be retrieved.  The first character in the Clob is at position 1.
	* @param length the length in characters of the partial value to be retrieved.
	* @return <code>Reader</code> through which the partial <code>Clob</code> value can be read.
	* @throws SQLException if pos is less than 1 or if pos is greater than the number of
	* characters in the <code>Clob</code> or if pos + length is greater than the number of
	* characters in the <code>Clob</code>
	*
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getCharacterStream(pos : haxe.Int64, length : haxe.Int64) : java.io.Reader;
	
	
}
