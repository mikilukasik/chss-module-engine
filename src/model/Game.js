import uuid from 'uuid-random';
import { fen2intArray } from '../engine_new/transformers/fen2intArray.js';
import { generateLegalMoves } from '../engine_new/moveGenerators/generateLegalMoves.js';
export class GameModel {
  constructor({
    wPlayer = null,
    bPlayer = null,
    wName = 'Computer',
    bName = 'Computer',
    computerPlaysWhite = false,
    computerPlaysBlack = false,
    fen = 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1',
    bitBoard,
    board,
    tournamentInfo,
  } = {}) {
    const wNext = fen.split(' ')[1] === 'w';

    this.wPlayer = wPlayer;
    this.bPlayer = bPlayer;
    this.wName = wName;
    this.bName = bName;
    this.computerPlaysWhite = computerPlaysWhite;
    this.computerPlaysBlack = computerPlaysBlack;
    this.tournamentInfo = tournamentInfo;
    this.status = 'active';

    this.moveCount = 0;

    this.thinkingTimes = {
      black: [],
      white: [],
    };

    // fen compatible vars below
    this.fullMoveNumber = 1;
    this.halfMoveClock = 0;
    this.castlingAvailability = 'KQkq';
    this.enPassantTarget = '-';

    this.lmf = new Array(64).fill(255);
    this.lmt = new Array(64).fill(255);

    this.completed = false;

    // from old engine
    this.pendingMoveCount = 0;
    this.desiredDepth = 0; //will set after creating, at each move step
    this.returnedMoves = [];

    this.id = uuid();
    this._id = this.id;
    this.createdAt = new Date().toISOString();

    this.gameIsOn = true;
    this.whiteWon = false;
    this.blackWon = false;
    this.isDraw = false;

    this.askWhiteDraw = false;
    this.askBlackDraw = false;

    this.whiteCanForceDraw = false;
    this.blackCanForceDraw = false;

    this.wNext = wNext;
    this.moves = [];

    this.moved = null;

    this.bitBoard = bitBoard || board ? new Int8Array(board) : fen2intArray(fen);

    this.board = Array.from(board || this.bitBoard);

    this.nextMoves = Array.from(generateLegalMoves(this.bitBoard));

    this.allPastFens = [fen];
  }
}
