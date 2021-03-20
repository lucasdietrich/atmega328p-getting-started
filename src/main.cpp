#include <avr/io.h>
#include <avr/interrupt.h>

#include <util/delay.h>

#define START_TIMER() TIMSK1 |= (1<<TOIE1)
#define STOP_TIMER() TIMSK1 &= ~(1<<TOIE1)

// timer increments
#define TIMER_COUNT (uint16_t) (0xFFFFu - 15625u);


ISR(TIMER1_OVF_vect) {
  TCNT1 = (uint16_t) TIMER_COUNT;

  PORTB ^= 1 << 5;
}

// F_CPU

int main() {
  /* blink bluit in LED on PB5 */

  // led
  // set PB5 as output
  DDRB |= 1 << 5;

  // enable normal mode for timer 1

  // equivalent to TCCR1A = 0
  /*
  TCCR1A &= ~(0 << COM1A1);
  TCCR1A &= ~(0 << COM1B1);
  TCCR1A &= ~(0 << COM1A0);
  TCCR1A &= ~(0 << COM1B0);

  TCCR1A &= ~(0 << WGM10);
  TCCR1A &= ~(0 << WGM11);
  */

  // equivalent to TCCR1B = 0
  /*
  TCCR1B &= ~(0 << WGM12);
  TCCR1B &= ~(0 << WGM13);
  */

  TCCR1B = 0u;
  TCCR1A = 0u;

  // clock select : prescaler 
  // 16MHz / 1024 = 15625Hz
  // CS12 = 1, CS11 = 0, CS10 = 1
  TCCR1B |= (1 << CS12);
  TCCR1B &= ~(0 << CS11);
  TCCR1B |= (1 << CS10);

  // set counter register (1 - bits)
  TCNT1 = (uint16_t) TIMER_COUNT;
  
  // Timer/Counter1, Overflow Interrupt Enable
  START_TIMER();
  
  sei();

  for(;;) { }
}

