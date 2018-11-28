
const { Writable, Readable } = require('stream')

class SizeStream extends Writable {
  constructor(opts, cb) {
    super();
    let self = this;
    if (!opts) opts = {}
    if (typeof opts === 'number') opts = { size: opts }
    this.size = opts.size
    this.pending = this.size - (opts.offset || 0) % this.size
    this.cb = cb;
    this.once('finish', function () {
      if (self._current) self._current.push(null)
    })
  }

  _write(buf, enc, next) {
    if (buf.length === 0) {
      return next();
    }
    for (let i = 0; i < buf.length; i = j) {
      if (!this._current) {
        this._current = this._newReadable();
        this.cb(this._current);
      }
      let j = Math.min(buf.length, i + this.pending)
      this._current.push(buf.slice(i, j))
      this.pending -= j - i
      if (this.pending === 0) {
        this.pending = this.size
        this._current.push(null)
        this._current = null
      }
    }

    if (this._current === null) {
      next()
    } else if (this._ready) {
      this._ready = false
      next()
    } else {
      this._next = next
    }
  }

  _newReadable() {
    let self = this
    let r = new Readable
    r._read = function () {
      let next = self._next
      if (next) {
        self._next = null
        next()
      } else {
        self._ready = true
      }
    }
    return r
  }

}

module.exports = SizeStream