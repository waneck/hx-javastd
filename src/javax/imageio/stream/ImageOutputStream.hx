package javax.imageio.stream;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface ImageOutputStream extends javax.imageio.stream.ImageInputStream extends java.io.DataOutput
{
	/**
	* Writes a single byte to the stream at the current position.
	* The 24 high-order bits of <code>b</code> are ignored.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.  Implementers can use the
	* {@link ImageOutputStreamImpl#flushBits <code>flushBits</code>}
	* method of {@link ImageOutputStreamImpl
	* <code>ImageOutputStreamImpl</code>} to guarantee this.
	*
	* @param b an <code>int</code> whose lower 8 bits are to be
	* written.
	*
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function write(b : Int) : Void;
	
	/**
	* Writes a sequence of bytes to the stream at the current
	* position.  If <code>b.length</code> is 0, nothing is written.
	* The byte <code>b[0]</code> is written first, then the byte
	* <code>b[1]</code>, and so on.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param b an array of <code>byte</code>s to be written.
	*
	* @exception NullPointerException if <code>b</code> is
	* <code>null</code>.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Writes a sequence of bytes to the stream at the current
	* position.  If <code>len</code> is 0, nothing is written.
	* The byte <code>b[off]</code> is written first, then the byte
	* <code>b[off + 1]</code>, and so on.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.  Implementers can use the
	* {@link ImageOutputStreamImpl#flushBits <code>flushBits</code>}
	* method of {@link ImageOutputStreamImpl
	* <code>ImageOutputStreamImpl</code>} to guarantee this.
	*
	* @param b an array of <code>byte</code>s to be written.
	* @param off the start offset in the data.
	* @param len the number of <code>byte</code>s to write.
	*
	* @exception IndexOutOfBoundsException if <code>off</code> is
	* negative, <code>len</code> is negative, or <code>off +
	* len</code> is greater than <code>b.length</code>.
	* @exception NullPointerException if <code>b</code> is
	* <code>null</code>.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Writes a <code>boolean</code> value to the stream.  If
	* <code>v</code> is true, the value <code>(byte)1</code> is
	* written; if <code>v</code> is false, the value
	* <code>(byte)0</code> is written.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param v the <code>boolean</code> to be written.
	*
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeBoolean(v : Bool) : Void;
	
	/**
	* Writes the 8 low-order bits of <code>v</code> to the
	* stream. The 24 high-order bits of <code>v</code> are ignored.
	* (This means that <code>writeByte</code> does exactly the same
	* thing as <code>write</code> for an integer argument.)
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param v an <code>int</code> containing the byte value to be
	* written.
	*
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeByte(v : Int) : Void;
	
	/**
	* Writes the 16 low-order bits of <code>v</code> to the
	* stream. The 16 high-order bits of <code>v</code> are ignored.
	* If the stream uses network byte order, the bytes written, in
	* order, will be:
	*
	* <pre>
	* (byte)((v &gt;&gt; 8) &amp; 0xff)
	* (byte)(v &amp; 0xff)
	* </pre>
	*
	* Otherwise, the bytes written will be:
	*
	* <pre>
	* (byte)(v &amp; 0xff)
	* (byte)((v &gt;&gt; 8) &amp; 0xff)
	* </pre>
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param v an <code>int</code> containing the short value to be
	* written.
	*
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeShort(v : Int) : Void;
	
	/**
	* This method is a synonym for
	* {@link #writeShort <code>writeShort</code>}.
	*
	* @param v an <code>int</code> containing the char (unsigned
	* short) value to be written.
	*
	* @exception IOException if an I/O error occurs.
	*
	* @see #writeShort(int)
	*/
	@:overload public function writeChar(v : Int) : Void;
	
	/**
	* Writes the 32 bits of <code>v</code> to the stream.  If the
	* stream uses network byte order, the bytes written, in order,
	* will be:
	*
	* <pre>
	* (byte)((v &gt;&gt; 24) &amp; 0xff)
	* (byte)((v &gt;&gt; 16) &amp; 0xff)
	* (byte)((v &gt;&gt; 8) &amp; 0xff)
	* (byte)(v &amp; 0xff)
	* </pre>
	*
	* Otheriwse, the bytes written will be:
	*
	* <pre>
	* (byte)(v &amp; 0xff)
	* (byte)((v &gt;&gt; 8) &amp; 0xff)
	* (byte)((v &gt;&gt; 16) &amp; 0xff)
	* (byte)((v &gt;&gt; 24) &amp; 0xff)
	* </pre>
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param v an <code>int</code> containing the value to be
	* written.
	*
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeInt(v : Int) : Void;
	
	/**
	* Writes the 64 bits of <code>v</code> to the stream.  If the
	* stream uses network byte order, the bytes written, in order,
	* will be:
	*
	* <pre>
	* (byte)((v &gt;&gt; 56) &amp; 0xff)
	* (byte)((v &gt;&gt; 48) &amp; 0xff)
	* (byte)((v &gt;&gt; 40) &amp; 0xff)
	* (byte)((v &gt;&gt; 32) &amp; 0xff)
	* (byte)((v &gt;&gt; 24) &amp; 0xff)
	* (byte)((v &gt;&gt; 16) &amp; 0xff)
	* (byte)((v &gt;&gt; 8) &amp; 0xff)
	* (byte)(v &amp; 0xff)
	* </pre>
	*
	* Otherwise, the bytes written will be:
	*
	* <pre>
	* (byte)(v &amp; 0xff)
	* (byte)((v &gt;&gt; 8) &amp; 0xff)
	* (byte)((v &gt;&gt; 16) &amp; 0xff)
	* (byte)((v &gt;&gt; 24) &amp; 0xff)
	* (byte)((v &gt;&gt; 32) &amp; 0xff)
	* (byte)((v &gt;&gt; 40) &amp; 0xff)
	* (byte)((v &gt;&gt; 48) &amp; 0xff)
	* (byte)((v &gt;&gt; 56) &amp; 0xff)
	* </pre>
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param v a <code>long</code> containing the value to be
	* written.
	*
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeLong(v : haxe.Int64) : Void;
	
	/**
	* Writes a <code>float</code> value, which is comprised of four
	* bytes, to the output stream. It does this as if it first
	* converts this <code>float</code> value to an <code>int</code>
	* in exactly the manner of the <code>Float.floatToIntBits</code>
	* method and then writes the int value in exactly the manner of
	* the <code>writeInt</code> method.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param v a <code>float</code> containing the value to be
	* written.
	*
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeFloat(v : Single) : Void;
	
	/**
	* Writes a <code>double</code> value, which is comprised of four
	* bytes, to the output stream. It does this as if it first
	* converts this <code>double</code> value to an <code>long</code>
	* in exactly the manner of the
	* <code>Double.doubleToLongBits</code> method and then writes the
	* long value in exactly the manner of the <code>writeLong</code>
	* method.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param v a <code>double</code> containing the value to be
	* written.
	*
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeDouble(v : Float) : Void;
	
	/**
	* Writes a string to the output stream. For every character in
	* the string <code>s</code>, taken in order, one byte is written
	* to the output stream. If <code>s</code> is <code>null</code>, a
	* <code>NullPointerException</code> is thrown.
	*
	* <p> If <code>s.length</code> is zero, then no bytes are
	* written. Otherwise, the character <code>s[0]</code> is written
	* first, then <code>s[1]</code>, and so on; the last character
	* written is <code>s[s.length-1]</code>. For each character, one
	* byte is written, the low-order byte, in exactly the manner of
	* the <code>writeByte</code> method. The high-order eight bits of
	* each character in the string are ignored.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param s a <code>String</code> containing the value to be
	* written.
	*
	* @exception NullPointerException if <code>s</code> is
	* <code>null</code>.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeBytes(s : String) : Void;
	
	/**
	* Writes a string to the output stream. For every character in
	* the string <code>s</code>, taken in order, two bytes are
	* written to the output stream, ordered according to the current
	* byte order setting.  If network byte order is being used, the
	* high-order byte is written first; the order is reversed
	* otherwise.  If <code>s</code> is <code>null</code>, a
	* <code>NullPointerException</code> is thrown.
	*
	* <p> If <code>s.length</code> is zero, then no bytes are
	* written. Otherwise, the character <code>s[0]</code> is written
	* first, then <code>s[1]</code>, and so on; the last character
	* written is <code>s[s.length-1]</code>.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param s a <code>String</code> containing the value to be
	* written.
	*
	* @exception NullPointerException if <code>s</code> is
	* <code>null</code>.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeChars(s : String) : Void;
	
	/**
	* Writes two bytes of length information to the output stream in
	* network byte order, followed by the
	* <a href="../../../java/io/DataInput.html#modified-utf-8">modified
	* UTF-8</a>
	* representation of every character in the string <code>s</code>.
	* If <code>s</code> is <code>null</code>, a
	* <code>NullPointerException</code> is thrown.  Each character in
	* the string <code>s</code> is converted to a group of one, two,
	* or three bytes, depending on the value of the character.
	*
	* <p> If a character <code>c</code> is in the range
	* <code>&#92;u0001</code> through <code>&#92;u007f</code>, it is
	* represented by one byte:
	*
	* <p><pre>
	* (byte)c
	* </pre>
	*
	* <p> If a character <code>c</code> is <code>&#92;u0000</code> or
	* is in the range <code>&#92;u0080</code> through
	* <code>&#92;u07ff</code>, then it is represented by two bytes,
	* to be written in the order shown:
	*
	* <p> <pre><code>
	* (byte)(0xc0 | (0x1f &amp; (c &gt;&gt; 6)))
	* (byte)(0x80 | (0x3f &amp; c))
	* </code></pre>
	*
	* <p> If a character <code>c</code> is in the range
	* <code>&#92;u0800</code> through <code>uffff</code>, then it is
	* represented by three bytes, to be written in the order shown:
	*
	* <p> <pre><code>
	* (byte)(0xe0 | (0x0f &amp; (c &gt;&gt; 12)))
	* (byte)(0x80 | (0x3f &amp; (c &gt;&gt; 6)))
	* (byte)(0x80 | (0x3f &amp; c))
	* </code></pre>
	*
	* <p> First, the total number of bytes needed to represent all
	* the characters of <code>s</code> is calculated. If this number
	* is larger than <code>65535</code>, then a
	* <code>UTFDataFormatException</code> is thrown. Otherwise, this
	* length is written to the output stream in exactly the manner of
	* the <code>writeShort</code> method; after this, the one-, two-,
	* or three-byte representation of each character in the string
	* <code>s</code> is written.
	*
	* <p> The current byte order setting is ignored.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* <p><strong>Note:</strong> This method should not be used in
	* the  implementation of image formats that use standard UTF-8,
	* because  the modified UTF-8 used here is incompatible with
	* standard UTF-8.
	*
	* @param s a <code>String</code> containing the value to be
	* written.
	*
	* @exception NullPointerException if <code>s</code> is
	* <code>null</code>.
	* @exception UTFDataFormatException if the modified UTF-8
	* representation of <code>s</code> requires more than 65536 bytes.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeUTF(s : String) : Void;
	
	/**
	* Writes a sequence of shorts to the stream at the current
	* position.  If <code>len</code> is 0, nothing is written.
	* The short <code>s[off]</code> is written first, then the short
	* <code>s[off + 1]</code>, and so on.  The byte order of the
	* stream is used to determine the order in which the individual
	* bytes are written.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param s an array of <code>short</code>s to be written.
	* @param off the start offset in the data.
	* @param len the number of <code>short</code>s to write.
	*
	* @exception IndexOutOfBoundsException if <code>off</code> is
	* negative, <code>len</code> is negative, or <code>off +
	* len</code> is greater than <code>s.length</code>.
	* @exception NullPointerException if <code>s</code> is
	* <code>null</code>.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeShorts(s : java.NativeArray<java.StdTypes.Int16>, off : Int, len : Int) : Void;
	
	/**
	* Writes a sequence of chars to the stream at the current
	* position.  If <code>len</code> is 0, nothing is written.
	* The char <code>c[off]</code> is written first, then the char
	* <code>c[off + 1]</code>, and so on.  The byte order of the
	* stream is used to determine the order in which the individual
	* bytes are written.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param c an array of <code>char</code>s to be written.
	* @param off the start offset in the data.
	* @param len the number of <code>char</code>s to write.
	*
	* @exception IndexOutOfBoundsException if <code>off</code> is
	* negative, <code>len</code> is negative, or <code>off +
	* len</code> is greater than <code>c.length</code>.
	* @exception NullPointerException if <code>c</code> is
	* <code>null</code>.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeChars(c : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	/**
	* Writes a sequence of ints to the stream at the current
	* position.  If <code>len</code> is 0, nothing is written.
	* The int <code>i[off]</code> is written first, then the int
	* <code>i[off + 1]</code>, and so on.  The byte order of the
	* stream is used to determine the order in which the individual
	* bytes are written.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param i an array of <code>int</code>s to be written.
	* @param off the start offset in the data.
	* @param len the number of <code>int</code>s to write.
	*
	* @exception IndexOutOfBoundsException if <code>off</code> is
	* negative, <code>len</code> is negative, or <code>off +
	* len</code> is greater than <code>i.length</code>.
	* @exception NullPointerException if <code>i</code> is
	* <code>null</code>.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeInts(i : java.NativeArray<Int>, off : Int, len : Int) : Void;
	
	/**
	* Writes a sequence of longs to the stream at the current
	* position.  If <code>len</code> is 0, nothing is written.
	* The long <code>l[off]</code> is written first, then the long
	* <code>l[off + 1]</code>, and so on.  The byte order of the
	* stream is used to determine the order in which the individual
	* bytes are written.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param l an array of <code>long</code>s to be written.
	* @param off the start offset in the data.
	* @param len the number of <code>long</code>s to write.
	*
	* @exception IndexOutOfBoundsException if <code>off</code> is
	* negative, <code>len</code> is negative, or <code>off +
	* len</code> is greater than <code>l.length</code>.
	* @exception NullPointerException if <code>l</code> is
	* <code>null</code>.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeLongs(l : java.NativeArray<haxe.Int64>, off : Int, len : Int) : Void;
	
	/**
	* Writes a sequence of floats to the stream at the current
	* position.  If <code>len</code> is 0, nothing is written.
	* The float <code>f[off]</code> is written first, then the float
	* <code>f[off + 1]</code>, and so on.  The byte order of the
	* stream is used to determine the order in which the individual
	* bytes are written.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param f an array of <code>float</code>s to be written.
	* @param off the start offset in the data.
	* @param len the number of <code>float</code>s to write.
	*
	* @exception IndexOutOfBoundsException if <code>off</code> is
	* negative, <code>len</code> is negative, or <code>off +
	* len</code> is greater than <code>f.length</code>.
	* @exception NullPointerException if <code>f</code> is
	* <code>null</code>.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeFloats(f : java.NativeArray<Single>, off : Int, len : Int) : Void;
	
	/**
	* Writes a sequence of doubles to the stream at the current
	* position.  If <code>len</code> is 0, nothing is written.
	* The double <code>d[off]</code> is written first, then the double
	* <code>d[off + 1]</code>, and so on.  The byte order of the
	* stream is used to determine the order in which the individual
	* bytes are written.
	*
	* <p> If the bit offset within the stream is non-zero, the
	* remainder of the current byte is padded with 0s
	* and written out first.  The bit offset will be 0 after the
	* write.
	*
	* @param d an array of <code>doubles</code>s to be written.
	* @param off the start offset in the data.
	* @param len the number of <code>double</code>s to write.
	*
	* @exception IndexOutOfBoundsException if <code>off</code> is
	* negative, <code>len</code> is negative, or <code>off +
	* len</code> is greater than <code>d.length</code>.
	* @exception NullPointerException if <code>d</code> is
	* <code>null</code>.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeDoubles(d : java.NativeArray<Float>, off : Int, len : Int) : Void;
	
	/**
	* Writes a single bit, given by the least significant bit of the
	* argument, to the stream at the current bit offset within the
	* current byte position.  The upper 31 bits of the argument are
	* ignored.  The given bit replaces the previous bit at that
	* position.  The bit offset is advanced by one and reduced modulo
	* 8.
	*
	* <p> If any bits of a particular byte have never been set
	* at the time the byte is flushed to the destination, those
	* bits will be set to 0 automatically.
	*
	* @param bit an <code>int</code> whose least significant bit
	* is to be written to the stream.
	*
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeBit(bit : Int) : Void;
	
	/**
	* Writes a sequence of bits, given by the <code>numBits</code>
	* least significant bits of the <code>bits</code> argument in
	* left-to-right order, to the stream at the current bit offset
	* within the current byte position.  The upper <code>64 -
	* numBits</code> bits of the argument are ignored.  The bit
	* offset is advanced by <code>numBits</code> and reduced modulo
	* 8.  Note that a bit offset of 0 always indicates the
	* most-significant bit of the byte, and bytes of bits are written
	* out in sequence as they are encountered.  Thus bit writes are
	* always effectively in network byte order.  The actual stream
	* byte order setting is ignored.
	*
	* <p> Bit data may be accumulated in memory indefinitely, until
	* <code>flushBefore</code> is called.  At that time, all bit data
	* prior to the flushed position will be written.
	*
	* <p> If any bits of a particular byte have never been set
	* at the time the byte is flushed to the destination, those
	* bits will be set to 0 automatically.
	*
	* @param bits a <code>long</code> containing the bits to be
	* written, starting with the bit in position <code>numBits -
	* 1</code> down to the least significant bit.
	*
	* @param numBits an <code>int</code> between 0 and 64, inclusive.
	*
	* @exception IllegalArgumentException if <code>numBits</code> is
	* not between 0 and 64, inclusive.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function writeBits(bits : haxe.Int64, numBits : Int) : Void;
	
	/**
	* Flushes all data prior to the given position to the underlying
	* destination, such as an <code>OutputStream</code> or
	* <code>File</code>.  Attempting to seek to the flushed portion
	* of the stream will result in an
	* <code>IndexOutOfBoundsException</code>.
	*
	* @param pos a <code>long</code> containing the length of the
	* stream prefix that may be flushed to the destination.
	*
	* @exception IndexOutOfBoundsException if <code>pos</code> lies
	* in the flushed portion of the stream or past the current stream
	* position.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload public function flushBefore(pos : haxe.Int64) : Void;
	
	
}
