U_SIZE = 8
A_SIZE = 20
SCALE  = 50

STYLES = {
  ar: 'stroke: none;'
  vr: 'stroke: none; opacity: 0.5'
  br: 'stroke: gray; fill:none; stroke-width: 0.1'
  mr: 'stroke: black; fill: white; stroke-width: 0.1'
  v:  'stroke: blue; fill:none; stroke-width: 0.5'
  m:  'stroke:  red; fill:none; stroke-width: 0.5'
  t:  'marker-end:url(#head);'
  f:  'marker-start:url(#head);'
  u:  "transform:scale(#{1 / U_SIZE})"
  a:  "transform:scale(#{1 / A_SIZE})"
}

SWITCH = [
]

GADGETS = {
  u_straight: {
    br: 'M-4, 0 L 4, 0 L 4, 4 L-4, 4 Z'
    vr: 'M-1, 0 L-1, 4 L 1, 4 L 1, 0 Z'
    c1: 'M 1, 0 L 1, 4'
    c2: 'M-1, 0 L-1, 4'
  }
  u_split: {
    br: 'M-4,-4 L 4,-4 L-4, 4 Z'
    vr: 'M-1,-4 L 1,-4 L 1,-1 L-1,-1 Z 
         M-4,-1 L-1,-1 L-1, 1 L-4, 1 Z'
    c1: 'M 1,-4 L 1,-1 L-1, 1 M-4,-1 L-1,-1'
    c2: 'M-1,-4 L-1, 1 L-4, 1 M-1,-1 L 1,-1'
  }
  u_cross1: {
    br: 'M-4,-4 L 4,-4 L 4, 4 L-4, 4 Z'
    vr: 'M-4,-1 L-1,-1 L-1, 1 L-4, 1 Z 
         M 1,-1 L 4,-1 L 4, 1 L 1, 1 Z'
    c1: 'M-4,-1 L 4,-1'
    c2: 'M-4, 1 L 4, 1'
  }
  u_cross2: {
    br: 'M-4,-4 L 4,-4 L 4, 4 L-4, 4 Z'
    vr: 'M-1,-4 L-1,-1 L 1,-1 L 1,-4 Z 
         M-1, 1 L-1, 4 L 1, 4 L 1, 1 Z'
    c1: 'M 1,-4 L 1,-1 M-1,-1 L-1, 1 M 1, 1 L 1, 4'
    c2: 'M-1,-4 L-1,-1 M 1,-1 L 1, 1 M-1, 1 L-1, 4'
  }
  u_clause1: {
    br: 'M-12,-8 L 4,-8 L 4, 4 L-4, 4 L-12,-4 Z'
    vr: 'M -5,-8 L-5,-5 L-1,-5 L-1,-8 Z 
         M -9,-1 L-5,-5 L-3,-3 L-7, 1 Z 
         M -1,-5 L-3,-3 L-1,-1 L 3,-1 Z'
    c1: 'M -1,-8 L-1,-5 L-7, 1 M-5,-5 L-3,-3 M-1,-5 L 3,-1'
    c2: 'M -5,-8 L-5,-5 L-9,-1 M-5,-5 L-1,-5 M-3,-3 L-1,-1 L 3,-1'
  }
  u_clause2: {
    br: 'M-4,-4 L 4,-4 L 4, 4 L-4, 4 Z'
    vr: 'M-1, 4 L-1,-1 L 1, 1 L 1, 4 Z'
    c1: 'M-1,-1 L-1, 4'
    c2: 'M-1,-1 L 1, 1 L 1, 4'
  }
  u_clause3: {
    br: 'M-4,-4 L 4,-4 L 4, 4 L-4, 4 Z'
    vr: 'M 4,-1 L 3,-1 L 1, 1 L 4, 1'
    c1: 'M 1, 1 L 4, 1'
    c2: 'M 4,-1 L 3,-1 L 1, 1'
  }
  a_straight: {
    ar: 'M-3.5, 5 L 3.5, 5'
    br: 'M-10, 0 L10, 0 L10,10 L-10,10 Z'
    vr: 'M -5, 0 L-5,10 L 5,10 L 5, 0 Z'
    c1: 'M -2, 0 L-2,10 M 2, 0 L 2,10'
    c2: 'M -5, 0 L-5,10 M 5, 0 L 5,10'
  }
  a_split1: {
    ar: 'M-3.5, 8 L3.5, 8'
    br: 'M 0, 0 L10,10 L-10,10 Z'
    vr: 'M 5,10 L-5,10 L-5, 5 L-1, 5 L 2, 8 L 5, 5'
    c1: 'M 2,10 L 2, 8 L 5, 5 M 2, 8 L-1, 5 M-2,10 L-2, 5 M 2, 7 L 2, 5 
         M-2, 2 L 2, 2 L 2, 3 L 4, 5 M 2, 3 L-0, 5 M-2, 2 L-5, 5'
    c2: 'M 5,10 L 5, 5 L-5, 5 L-5,10 M 2, 8 L 2, 7 L 4, 5 
         M 2, 7 L 0, 5 M-2, 5 L-2, 2 M 2, 5 L 2, 3 M 2, 2 L-1, 5'
  }
  a_split2: {
    ar: 'M 3.5, 8 L-3.5, 8'
    br: 'M 0, 0 L10,10 L-10,10 Z'
    vr: 'M 5,10 L-5,10 L-5, 5 L-1, 5 L 2, 8 L 5, 5'
    c1: 'M 2,10 L 2, 8 L 5, 5 M 2, 8 L-1, 5 M-2,10 L-2, 5 M 2, 7 L 2, 5 
         M-2, 2 L 2, 2 L 2, 3 L 4, 5 M 2, 3 L-0, 5 M-2, 2 L-5, 5'
    c2: 'M 5,10 L 5, 5 L-5, 5 L-5,10 M 2, 8 L 2, 7 L 4, 5 
         M 2, 7 L 0, 5 M-2, 5 L-2, 2 M 2, 5 L 2, 3 M 2, 2 L-1, 5'
  }
  a_clause: {
    ar: 'M-3.5, 8 L3.5, 8'
    br: 'M-10,10 L10,10 L 0, 0 Z'
    vr: 'M -5,10 L 5,10 L 5, 5 L 2, 8 L-2, 8 L-5, 5'
    c1: 'M -2,10 L-2, 8 L-5, 5 M-2, 8 L 2, 8 M 2,10 L 2, 8 L 5, 5 
         M -1, 7 L-1, 5 M 1, 7 L 1, 5 M-3, 5 L-1, 3 L 1, 3 L 3, 5 
         M -1, 3 L-2, 2 M 1, 3 L 2, 2'
    c2: 'M -5,10 L-5, 5 L 5, 5 L 5,10 M-2, 8 L-1, 7 L-3, 5 M -1, 7 L 1, 7 
         M  2, 8 L 1, 7 L 3, 5 M-1, 5 L-1, 3 M 1, 5 L 1, 3'
  }
  a_cross1: {
    ar: 'M-3.5, 8 L3.5, 8'
    br: 'M10,10 L-10,10 L-10, 0 L10, 0 Z'
    vr: 'M 5,10 L 5,  5 L-5,  5 L-5,10 Z'
    c1: 'M 2,10 L 2,  0 M-2, 10 L-2, 0'
    c2: 'M 5,10 L 5,  0 M-5, 10 L-5, 0'
  }
  a_cross2: {
    ar: 'M-3.5, 8 L3.5, 8'
    br: 'M10,10 L-10,10 L-10, 0 L10, 0 Z'
    vr: 'M 5,10 L 5, 5 L-5, 5 L-5,10 Z'
    c1: 'M 2,10 L 2, 5 M-2,10 L-2, 5 M 5, 5 L 5, 2 
         M 2, 2 L 2, 0 M-5, 5 L-5, 2 M-2, 2 L-2, 0'
    c2: 'M 5,10 L 5, 5 M-5,10 L-5, 5 M 2, 5 L 2, 2 
         M-2, 5 L-2, 2 M-5, 2 L-5, 0 M 5, 2 L 5, 0'
  }
}

CLAUSE = {
  u: [
    {n:   'cross1', v: 0, x: 0, y: 0, a: 225, f:  1, s: Math.sqrt(2)}
    {n: 'straight', v: 0, x: 1, y: 1, a: 135, f:  1, s: Math.sqrt(2)}
    {n:    'split', v: 0, x: 1, y: 1, a: 180, f:  1, s: 1}
    {n:    'split', v: 0, x: 2, y: 1, a: 180, f: -1, s: 1}
    {n:  'clause1', v: 0, x: 3, y: 1, a:   0, f:  1, s: 1}
    {n:  'clause2', v: 1, x: 3, y: 1, a:   0, f:  1, s: 1}
    {n:  'clause3', v: 2, x: 3, y: 1, a:   0, f:  1, s: 1}
    {n:   'cross1', v: 2, x: 4, y: 1, a: 180, f:  1, s: 1}
    {n:   'cross2', v: 1, x: 4, y: 1, a:   0, f:  1, s: 1}
    {n: 'straight', v: 1, x: 4, y: 0, a:   0, f:  1, s: 1}
    {n:   'cross1', v: 2, x: 5, y: 1, a: 180, f:  1, s: 1}
    {n:   'cross2', v: 2, x: 5, y: 1, a: 180, f:  1, s: 1}
    {n: 'straight', v: 2, x: 5, y: 0, a:   0, f: -1, s: 1}
    {n:    'split', v: 2, x: 6, y: 1, a: 180, f: -1, s: 1}
    {n: 'straight', v: 2, x: 6, y: 1, a: 135, f: -1, s: Math.sqrt(2)}
    {n:   'cross2', v: 2, x: 7, y: 0, a:  45, f:  1, s: Math.sqrt(2)}
  ]
  a: [
    {n:   'cross1', v: 0, x: 0, y: 0, a:  45, f: -1, s: Math.sqrt(2)}
    {n:   'cross1', v: 0, x: 0, y: 0, a: 135, f:  1, s: Math.sqrt(2)}
    {n: 'straight', v: 0, x: 1, y: 1, a: 135, f:  1, s: Math.sqrt(2)}
    {n:   'split2', v: 0, x: 1, y: 1, a:   0, f:  1, s: 1}
    {n:   'split1', v: 0, x: 1, y: 1, a:  90, f: -1, s: 1}
    {n:   'split2', v: 0, x: 2, y: 1, a:   0, f: -1, s: 1}
    {n:   'split1', v: 0, x: 2, y: 1, a:  90, f:  1, s: 1}
    {n:   'split1', v: 0, x:2.5, y:0.5, a:  45, f:  1, s: Math.sqrt(2)}
    {n:   'split2', v: 0, x:2.5, y:0.5, a:  45, f: -1, s: Math.sqrt(2)}
    {n: 'straight', v: 0, x:2.5, y:0.5, a: 180, f: -1, s: 2}
    {n:   'clause', v: 1, x: 3, y: 1, a:   0, f: -1, s: 1}
    {n:   'clause', v: 2, x: 3, y: 1, a:  90, f: -1, s: 1}
    {n:   'cross1', v: 1, x: 4, y: 1, a:   0, f:  1, s: 1}
    {n:   'cross2', v: 2, x: 4, y: 1, a:  90, f:  1, s: 1}
    {n:   'cross1', v: 1, x: 4, y: 1, a: 180, f: -1, s: 1}
    {n:   'cross2', v: 2, x: 4, y: 1, a:  90, f: -1, s: 1}
    {n: 'straight', v: 1, x: 4, y: 0, a:   0, f:  1, s: 1}
    {n:   'cross1', v: 2, x: 5, y: 1, a:   0, f: -1, s: 1}
    {n:   'cross2', v: 2, x: 5, y: 1, a:  90, f:  1, s: 1}
    {n:   'cross1', v: 2, x: 5, y: 1, a: 180, f:  1, s: 1}
    {n:   'cross2', v: 2, x: 5, y: 1, a:  90, f: -1, s: 1}
    {n: 'straight', v: 2, x: 5, y: 0, a:   0, f: -1, s: 1}
    {n:   'split2', v: 2, x: 6, y: 1, a:   0, f: -1, s: 1}
    {n:   'split1', v: 2, x: 6, y: 1, a:  90, f:  1, s: 1}
    {n: 'straight', v: 2, x: 6, y: 1, a: 135, f: -1, s: Math.sqrt(2)}
    {n:   'cross2', v: 2, x: 7, y: 0, a:  45, f:  1, s: Math.sqrt(2)}
    {n:   'cross2', v: 2, x: 7, y: 0, a: 135, f: -1, s: Math.sqrt(2)}
  ]
}

CROSS1 = {
  u: [
    {n: 'cross1', v: 1, x: 0, y: 0, a:   0, f:  1, s: 1}
    {n: 'cross2', v: 0, x: 0, y: 0, a:   0, f: -1, s: 1}
    {n: 'cross1', v: 1, x: 1, y: 0, a:   0, f:  1, s: 1}
    {n: 'cross2', v: 0, x: 1, y: 0, a:   0, f:  1, s: 1}
  ]
  a: [
    {n:   'cross1', v: 0, x: 0, y: 0, a:   0, f: -1, s: 1}
    {n:   'cross2', v: 1, x: 0, y: 0, a: 270, f:  1, s: 1}
    {n:   'cross1', v: 0, x: 0, y: 0, a: 180, f:  1, s: 1}
    {n:   'cross2', v: 1, x: 0, y: 0, a: 270, f: -1, s: 1}
    {n:   'cross1', v: 0, x: 1, y: 0, a:   0, f:  1, s: 1}
    {n:   'cross2', v: 1, x: 1, y: 0, a: 270, f:  1, s: 1}
    {n:   'cross1', v: 0, x: 1, y: 0, a: 180, f: -1, s: 1}
    {n:   'cross2', v: 1, x: 1, y: 0, a: 270, f: -1, s: 1}
  ]
}

CROSS2 = {
  u: [
    {n: 'cross1', v: 1, x: 0, y: 0, a:   0, f:  1, s: 1}
    {n: 'cross2', v: 0, x: 0, y: 0, a: 180, f: -1, s: 1}
    {n: 'cross1', v: 1, x: 1, y: 0, a:   0, f:  1, s: 1}
    {n: 'cross2', v: 0, x: 1, y: 0, a: 180, f:  1, s: 1}
  ]
  a: [
    {n:   'cross1', v: 0, x: 0, y: 0, a:   0, f:  1, s: 1}
    {n:   'cross2', v: 1, x: 0, y: 0, a: 270, f:  1, s: 1}
    {n:   'cross1', v: 0, x: 0, y: 0, a: 180, f: -1, s: 1}
    {n:   'cross2', v: 1, x: 0, y: 0, a: 270, f: -1, s: 1}
    {n:   'cross1', v: 0, x: 1, y: 0, a:   0, f: -1, s: 1}
    {n:   'cross2', v: 1, x: 1, y: 0, a: 270, f:  1, s: 1}
    {n:   'cross1', v: 0, x: 1, y: 0, a: 180, f:  1, s: 1}
    {n:   'cross2', v: 1, x: 1, y: 0, a: 270, f: -1, s: 1}
  ]
}

SPLIT = {
  u: [
    {n:  'split', v: 0, x:-0.5, y:   0, a: 315, f: -1, s: 1 / Math.sqrt(2)}
    {n:  'split', v: 1, x:   0, y:-0.5, a: 225, f:  1, s: 1 / Math.sqrt(2)}
    {n:  'split', v: 1, x:   0, y: 0.5, a:  45, f:  1, s: 1 / Math.sqrt(2)}
    {n: 'cross1', v: 1, x: 0.5, y:   0, a: 225, f:  1, s: 1 / Math.sqrt(2)}
    {n: 'cross2', v: 0, x: 0.5, y:   0, a:  45, f:  1, s: 1 / Math.sqrt(2)}
    {n:  'split', v: 1, x:   1, y:-0.5, a: 225, f: -1, s: 1 / Math.sqrt(2)}
    {n:  'split', v: 0, x: 1.5, y:   0, a: 315, f:  1, s: 1 / Math.sqrt(2)}
    {n:  'split', v: 1, x:   1, y: 0.5, a:  45, f: -1, s: 1 / Math.sqrt(2)}
  ]
  a: [
    {n: 'split1', v: 0, x:-0.5, y:   0, a: 315, f:  1, s: 1 / Math.sqrt(2)}
    {n: 'split1', v: 1, x:   0, y:-0.5, a:  45, f: -1, s: 1 / Math.sqrt(2)}
    {n: 'split1', v: 1, x:   0, y: 0.5, a: 225, f: -1, s: 1 / Math.sqrt(2)}
    {n: 'split2', v: 0, x:-0.5, y:   0, a: 135, f: -1, s: 1 / Math.sqrt(2)}
    {n: 'split2', v: 1, x:   0, y:-0.5, a:  45, f:  1, s: 1 / Math.sqrt(2)}
    {n: 'split2', v: 1, x:   0, y: 0.5, a: 225, f:  1, s: 1 / Math.sqrt(2)}
    {n: 'cross1', v: 1, x: 0.5, y:   0, a:  45, f: -1, s: 1 / Math.sqrt(2)}
    {n: 'cross1', v: 0, x: 0.5, y:   0, a: 135, f:  1, s: 1 / Math.sqrt(2)}
    {n: 'cross2', v: 1, x: 0.5, y:   0, a: 135, f: -1, s: 1 / Math.sqrt(2)}
    {n: 'cross2', v: 0, x: 0.5, y:   0, a:  45, f:  1, s: 1 / Math.sqrt(2)}
    {n: 'split1', v: 1, x:   1, y:-0.5, a:  45, f:  1, s: 1 / Math.sqrt(2)}
    {n: 'split1', v: 0, x: 1.5, y:   0, a: 315, f: -1, s: 1 / Math.sqrt(2)}
    {n: 'split1', v: 1, x:   1, y: 0.5, a: 225, f:  1, s: 1 / Math.sqrt(2)}
    {n: 'split2', v: 0, x: 1.5, y:   0, a: 135, f:  1, s: 1 / Math.sqrt(2)}
    {n: 'split2', v: 1, x:   1, y:-0.5, a:  45, f: -1, s: 1 / Math.sqrt(2)}
    {n: 'split2', v: 1, x:   1, y: 0.5, a: 225, f: -1, s: 1 / Math.sqrt(2)}
  ]
}

class AppHandler

  constructor: () ->
    @cat = (a,b) -> a.concat(b)
    @vars = [true,true,true,true,true,true,true,true,true,true]
    @clauses = [[0,5,2],[4,7,9],[3,8,0],[6,2,1],[4,7,3],[1,5,9]]
    @colors = @get_colors(4)
    @svg  = d3.select('#main')
      .attr( 'width',"#{(7 * @clauses.length + 2)* SCALE}px")
      .attr('height',"#{(2 * @vars.length + 6) * SCALE}px")
      .attr( 'stroke-linecap','round')
      .attr('stroke-linejoin','round')
    @add_style(key,".#{key}",style) for key, style of STYLES
    @update_vars_style()
    @defs = @svg.append('defs')
    @initialize_defs()
    @initialize_gadgets()
    @update_vars_assignment()
    @canvas = @svg.append('g').attr('id','canvas')
      .attr('transform',"scale(#{SCALE})")
    @unassigned = @canvas.append('g').attr('id','unassigned')
      .attr('transform',"translate(1,1)")
    for c, i in @clauses
      @add_clause(@unassigned,'u',i,c)
    @assigned = @canvas.append('g').attr('id','assigned')
      .attr('transform',"translate(1,#{@vars.length + 4})")
    for c, i in @clauses
      @add_clause(@assigned,'a',i,c)
    #@svg.selectAll('.br').attr('visibility','hidden')
    #@svg.selectAll('.vr').attr('visibility','hidden')

  tform_from_g: (g) ->
    tform = "translate(#{g.x},#{g.y})"
    tform = tform + " scale(#{g.s})" if (g.f * g.s - 1 > 0)
    tform = tform + " scale(#{g.f * g.s},#{g.s})" if (g.f * g.s - 1 < 0)
    tform = tform + " rotate(#{g.a})" if (g.a isnt 0)
    return tform

  add_clause: (p,t,n,c) ->
    tform = "translate(#{n * 7},0)"
    cl = p.append('g')
      .attr('id',"c#{n}")
      .attr('transform',tform)
    top = cl.append('g').attr('id',"c#{n}_top")
    for g in CLAUSE[t]
      top.append('use')
        .attr('xlink:href',"##{t}_#{g.n}_v#{c[g.v] + 1}")
        .attr('transform',@tform_from_g(g))
    for v, i in @vars
      row = cl.append('g').attr('id',"c#{n}_v#{i + 1}")
        .attr('transform',"translate(0,#{i + 2})")
      row.append('use')
        .attr('xlink:href',"##{t}_straight_v#{i + 1}")
        .attr('transform',"rotate(270)")
      for j in [0..2]
        rc = row.append('g').attr('id',"c#{n}_v#{i+1}_#{j}")
          .attr('transform',"translate(#{2 * j + 1},0)")
        if i isnt c[j]
          for g in (if i < c[j] then CROSS1[t] else CROSS2[t])
            idx = if g.v is 1 then i else c[j]
            rc.append('use')
              .attr('xlink:href',"##{t}_#{g.n}_v#{idx + 1}")
              .attr('transform',@tform_from_g(g))
        else
          for g in SPLIT[t]
            rc.append('use')
              .attr('xlink:href',"##{t}_#{g.n}_v#{i + 1}")
              .attr('transform',@tform_from_g(g))
      row.append('use')
        .attr('xlink:href',"##{t}_straight_v#{i + 1}")
        .attr('transform',"translate(7,0) rotate(90) scale(-1,1)")
    last = cl.append('g').attr('id',"c#{n}_last")
      .attr('transform',"translate(0,#{@vars.length + 2})")
    for i in [0..2]
      last.append('use')
        .attr('xlink:href',"##{t}_straight_v#{c[i] + 1}")
        .attr('transform',"translate(#{i * 2 + 1},0) rotate(180) scale(-1,1)")
      last.append('use')
        .attr('xlink:href',"##{t}_straight_v#{c[i] + 1}")
        .attr('transform',"translate(#{i * 2 + 2},0) rotate(180)")

  get_colors: (k) ->
    n = k * Math.floor(@vars.length / k) + k - 1
    ((Math.ceil(n / k) * i) % n) / (n + 1) for v, i in @vars

  initialize_defs: () ->
    @defs.append('marker').attr('id',"head")
      .attr('viewbox','0 0 2 2').attr('orient','auto')
      .attr('refX','1').attr('refY','1')
      .attr('markerWidth','2').attr('markerHeight','2')
      .append('circle').attr('cx','1').attr('cy','1').attr('r','0.5')
        .attr('class','mr')
    gadgets = (({name: n + '_' + k, d: d
      } for k, d of g) for n, g of GADGETS).reduce(@cat)
    @defs.selectAll('path')
      .data(gadgets,(g) -> g.name)
      .enter().append('path')
        .attr('vector-effect','non-scaling-stroke')
        .attr('id',(g) -> g.name)
        .attr( 'd',(g) -> g.d)

  add_style: (id,c,style) ->
    current = @svg.selectAll('style').filter("##{id}")
    current = @svg.append('style').attr('id',id) if current.empty()
    current.html("#{c}{#{style}}")
  
  update_vars_style: () ->
    for v, i in @vars
      c = d3.interpolateRainbow(@colors[i])
      @add_style("v#{i + 1}",".v#{i + 1} > .vr",  "fill:#{c};")

  update_vars_assignment: () ->
    for v, i in @vars
      @svg.selectAll('use').filter(".v#{i + 1} > .u.c1")
        .attr('class',"u c1 " + (if v then 'v' else 'm'))
      @svg.selectAll('use').filter(".v#{i + 1} > .u.c2")
        .attr('class',"u c2 " + (if v then 'm' else 'v'))
      @svg.selectAll('use').filter(".v#{i + 1} > .a.ar")
        .attr('class',"a ar " + (if v then 't' else 'f'))
    
  initialize_gadgets: () ->
    for v, i in @vars
      for g of GADGETS
        data = ['vr','c1 v','c2 m','br']
        data = data.concat(['ar']) if g.startsWith('a')
        s = if g.startsWith('u') then 1 / U_SIZE else 1 / A_SIZE
        @defs.append('g')
            .attr('id',"#{g}_v#{i + 1}")
            .attr('class',"v#{i + 1}")
          .selectAll('use').data(data).enter().append('use')
            .attr('xlink:href',(d) -> "##{g}_#{d[0..1]}")
            .attr('class',(d) -> "#{g[0]} #{d}")

window?.onload = () ->
  a = new AppHandler()

