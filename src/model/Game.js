import { getInitialTable } from "./table";
import uuid from 'uuid-random';
import { addMovesToTable, tableToAptString } from "../engine/engine";
import { fen2intArray } from "../engine_new/transformers/fen2intArray";
import { generateLegalMoves } from "../engine_new/moveGenerators/generateLegalMoves";
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
    wNext = true,
  }) {
    this.wPlayer = wPlayer;
    this.bPlayer = bPlayer;
    this.wName = wName;
    this.bName = bName;
    this.computerPlaysWhite = computerPlaysWhite;
    this.computerPlaysBlack = computerPlaysBlack;

    this.status = 'active';

    this.moveCount = 0;
    
    // fen compatible vars below
    this.fullMoveNumber = 1;
    this.halfMoveClock = 0;
    this.castlingAvailability = 'KQkq';
    this.enPassantTarget = '-';

    this.completed = false;


    // from old engine
    this.pendingMoveCount = 0
    this.desiredDepth = 0	//will set after creating, at each move step
    this.returnedMoves = []

    this.id = uuid();

    this.gameIsOn = true
    this.whiteWon = false
    this.blackWon = false
    this.isDraw = false

    this.askWhiteDraw = false
    this.askBlackDraw = false

    this.whiteCanForceDraw = false
    this.blackCanForceDraw = false

    this.wNext = wNext;
    this.moves = [];

    this.moved = null


    this.bitBoard = bitBoard || fen2intArray(fen);

    this.board = Array.from(board || this.bitBoard);

    this.nextMoves = Array.from(generateLegalMoves(this.bitBoard));

    this.allPastFens = [fen];
  }
}