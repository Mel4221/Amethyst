use std::fmt;

#[derive(Debug)]
pub enum LexerError {
    UnexpectedCharacter(char, usize), // character and line number
    UnterminatedString(usize),
    InvalidNumber(String, usize),
}

impl fmt::Display for LexerError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        match self {
            LexerError::UnexpectedCharacter(c, line) => 
                write!(f, "Unexpected character '{}' at line {}", c, line),
            LexerError::UnterminatedString(line) => 
                write!(f, "Unterminated string at line {}", line),
            LexerError::InvalidNumber(num, line) => 
                write!(f, "Invalid number '{}' at line {}", num, line),
        }
    }
}

impl std::error::Error for LexerError {}